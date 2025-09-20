import 'package:flutter/material.dart';
import 'package:flutter_bloc_form_plus/flutter_bloc_form.dart';
import 'package:flutter_bloc_form_plus/src/theme/field_theme_resolver.dart'; // Your SelectFieldBloc

/// Defines how the [Radio] button should be aligned relative to its label.
enum RadioDirection { left, right, top, bottom }

/// A customizable [Radio] group widget integrated with [SelectFieldBloc].
///
/// Features:
/// - Align the [Radio] button to the left, right, top, or bottom of the label.
/// - Configure padding, spacing, radio size, label style, and alignment.
/// - Tap anywhere on the item row/column to select/deselect.
/// - Works directly with a [SelectFieldBloc] for state management.
///
/// Example:
/// ```dart
/// CustomRadioGroupFieldBlocBuilder<String>(
///   selectFieldBloc: mySelectFieldBloc,
///   itemBuilder: (context, item) => Text(item),
///   direction: RadioDirection.right,
///   padding: EdgeInsets.all(12),
///   radioSize: 30,
///   labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
///   spacing: 12,
///   mainAxisAlignment: MainAxisAlignment.spaceBetween,
/// )
/// ```
class RadioGroupFieldBlocBuilder<Value> extends StatelessWidget {
  /// Creates a custom radio group field.
  ///
  /// [selectFieldBloc] is required and provides the source of values and state.
  /// [itemBuilder] is required and defines how each item should be displayed.
  const RadioGroupFieldBlocBuilder({
    super.key,
    required this.selectFieldBloc,
    required this.itemBuilder,
    this.direction = RadioDirection.left,
    this.isEnabled = true,
    this.padding = const EdgeInsets.symmetric(vertical: 4.0),
    this.radioSize = 24.0,
    this.labelStyle,
    this.spacing = 8.0,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,

    this.canDeselect,
     this.decoration = const InputDecoration(),
    this.nextFocusNode,
     this.animateWhenCanShow = true,
    this.textStyle, this.textColor,
     this.groupStyle =  const FlexGroupStyle(),
    this.canTapItemTile,
    this.mouseCursor,
    this.fillColor,
    this.overlayColor,
    this.splashRadius,
  });

  /// The [SelectFieldBloc] managing the state of the radio group.
  final SelectFieldBloc<Value, dynamic> selectFieldBloc;

  /// Builds the widget (usually a [Text]) representing each item label.
  final FieldItemBuilder<Value> itemBuilder;

  /// Alignment of radio vs. label:
  /// - [RadioDirection.left]: radio on the left, label on the right (default).
  /// - [RadioDirection.right]: label on the left, radio on the right.
  /// - [RadioDirection.top]: radio above the label.
  /// - [RadioDirection.bottom]: label above the radio.
  final RadioDirection direction;

  /// Whether the radio group is enabled.
  ///
  /// If false, radios are disabled and cannot be interacted with.
  final bool isEnabled;

  /// Padding around each radio item (row/column).
  final EdgeInsetsGeometry padding;

  /// The size (diameter) of the radio button.
  ///
  /// Default is 24.0 (Flutter’s default radio size).
  final double radioSize;

  /// Style applied to the label text.
  ///
  /// If null, defaults to [Theme.of(context).textTheme.bodyMedium].
  final TextStyle? labelStyle;

  /// Space between the radio and its label.
  final double spacing;

  /// Main axis alignment for the [Row] or [Column] that arranges
  /// the radio and label.
  final MainAxisAlignment mainAxisAlignment;

  /// Cross axis alignment for the [Row] or [Column] that arranges
  /// the radio and label.
  final CrossAxisAlignment crossAxisAlignment;




  /// if `true` the radio button selected can
  ///  be deselect by tapping.
  ///  Defaults `true`
  final bool? canDeselect;
  /// {@macro flutter_bloc_form_plus.FieldBlocBuilder.decoration}
  final InputDecoration decoration;

  /// {@macro flutter_bloc_form_plus.FieldBlocBuilder.nextFocusNode}
  final FocusNode? nextFocusNode;

  /// {@macro  flutter_bloc_form_plus.FieldBlocBuilder.animateWhenCanShow}
  final bool animateWhenCanShow;

  /// {@macro flutter_bloc_form_plus.FieldBlocBuilder.textStyle}
  final TextStyle? textStyle;

  /// {@macro flutter_bloc_form_plus.FieldBlocBuilder.textColor}
  final WidgetStateProperty<Color?>? textColor;

  /// {@macro flutter_bloc_form_plus.FieldBlocBuilder.groupStyle}
  final GroupStyle groupStyle;

  /// Identifies whether the item tile is touchable
  /// to change the status of the item
  /// Defaults `false`
  final bool? canTapItemTile;

  // ========== [Radio] ==========

  /// [Radio.mouseCursor]
  final WidgetStateProperty<MouseCursor?>? mouseCursor;

  /// [Radio.fillColor]
  final WidgetStateProperty<Color?>? fillColor;

  /// [Radio.overlayColor]
  final WidgetStateProperty<Color?>? overlayColor;

  /// [Radio.splashRadius]
  final double? splashRadius;


  RadioFieldTheme themeStyleOf(BuildContext context) {
    final theme = Theme.of(context);
    final formTheme = FormTheme.of(context);
    final fieldTheme = formTheme.radioTheme;
    final resolver = FieldThemeResolver(theme, formTheme, fieldTheme);
    final radioTheme = fieldTheme.radioTheme ?? theme.radioTheme;

    return RadioFieldTheme(
      decorationTheme: resolver.decorationTheme,
      textStyle: textStyle ?? resolver.textStyle,
      textColor: textColor ?? resolver.textColor,
      radioTheme: radioTheme.copyWith(
        mouseCursor: mouseCursor,
        fillColor: fillColor,
        overlayColor: overlayColor,
        splashRadius: splashRadius,
      ),
      canDeselect: canDeselect ?? fieldTheme.canDeselect,
      canTapItemTile: canTapItemTile ?? fieldTheme.canTapItemTile,
    );
  }

  @override
  Widget build(BuildContext context) {
    final fieldTheme = themeStyleOf(context);

    return Theme(
      data: Theme.of(context).copyWith(
        radioTheme: fieldTheme.radioTheme,
      ),
      child: CanShowFieldBlocBuilder(
          fieldBloc: selectFieldBloc,
          animate: animateWhenCanShow,
        builder: (_, __) {
          return BlocBuilder<SelectFieldBloc<Value, dynamic>,
              SelectFieldBlocState<Value, dynamic>>(
            bloc: selectFieldBloc,
            builder: (context, state) {
              return Column(
                children: state.items.map((item) {
                  final fieldItem = DefaultTextStyle(
                    style: labelStyle ?? Theme.of(context).textTheme.bodyMedium!,
                    child: itemBuilder(context, item),
                  );

                  final radio = Transform.scale(
                    scale: radioSize / 24.0, // Default radio size ~24
                    child: Radio<Value>(
                      value: item,
                     groupValue: state.value,
                      onChanged: isEnabled
                          ? (value) => selectFieldBloc.changeValue(value)
                          : null,
                    ),
                  );

                  // Layout selection based on [direction]
                  Widget content;
                  switch (direction) {
                    case RadioDirection.left:
                      content = Row(
                        mainAxisAlignment: mainAxisAlignment,
                        crossAxisAlignment: crossAxisAlignment,
                        children: [
                          radio,
                          SizedBox(width: spacing),
                          Expanded(child: fieldItem),
                        ],
                      );
                      break;
                    case RadioDirection.right:
                      content = Row(
                        mainAxisAlignment: mainAxisAlignment,
                        crossAxisAlignment: crossAxisAlignment,
                        children: [
                          Expanded(child: fieldItem),
                          SizedBox(width: spacing),
                          radio,
                        ],
                      );
                      break;
                    case RadioDirection.top:
                      content = Column(
                        mainAxisAlignment: mainAxisAlignment,
                        crossAxisAlignment: crossAxisAlignment,
                        children: [
                          radio,
                          SizedBox(height: spacing),
                          fieldItem,
                        ],
                      );
                      break;
                    case RadioDirection.bottom:
                      content = Column(
                        mainAxisAlignment: mainAxisAlignment,
                        crossAxisAlignment: crossAxisAlignment,
                        children: [
                          fieldItem,
                          SizedBox(height: spacing),
                          radio,
                        ],
                      );
                      break;
                  }

                  return Padding(
                    padding: padding,
                    child: InkWell(
                      onTap: isEnabled
                          ? () => selectFieldBloc.changeValue(
                        state.value == item ? null : item,
                      )
                          : null,
                      child: content,
                    ),
                  );
                }).toList(),
              );
            },
          );
        }
      ),
    );
  }
}
