import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_form_plus/bloc_form.dart' as bloc_form;

typedef FormBlocListenerCallback<
FormBlocState2 extends bloc_form
    .FormBlocState<SuccessResponse, ErrorResponse>,
SuccessResponse,
ErrorResponse>
= void Function(BuildContext context, FormBlocState2 state);

/// [BlocListener] that reacts to the state changes of the FormBloc.
class FormBlocListener<
FormBloc2 extends bloc_form.FormBloc<SuccessResponse, ErrorResponse>,
SuccessResponse,
ErrorResponse>
    extends BlocListener<FormBloc2,
        bloc_form.FormBlocState<SuccessResponse, ErrorResponse>> {
  /// [BlocListener] that reacts to the state changes of the FormBloc.
  /// {@macro bloclistener}
  FormBlocListener({
    super.key,
    this.formBloc,
    super.child,
    this.onLoading,
    this.onLoaded,
    this.onLoadFailed,
    this.onSubmitting,
    this.onSuccess,
    this.onFailure,
    this.onSubmissionCancelled,
    this.onSubmissionFailed,
    this.onDeleting,
    this.onDeleteFailed,
    this.onDeleteSuccessful,
  }) : super(
    bloc: formBloc,
    listenWhen: (previousState, state) =>
    previousState.runtimeType != state.runtimeType,
    listener: (context, state) {
      if (state is bloc_form.FormBlocLoading<SuccessResponse, ErrorResponse> &&
          onLoading != null) {
        onLoading(context, state);
      } else if (state is bloc_form.FormBlocLoaded<SuccessResponse, ErrorResponse> &&
          onLoaded != null) {
        onLoaded(context, state);
      } else if (state is bloc_form.FormBlocLoadFailed<SuccessResponse, ErrorResponse> &&
          onLoadFailed != null) {
        onLoadFailed(context, state);
      } else if (state is bloc_form
          .FormBlocSubmitting<SuccessResponse, ErrorResponse> &&
          onSubmitting != null) {
        onSubmitting(context, state);
      } else if (state is bloc_form.FormBlocSuccess<SuccessResponse, ErrorResponse> &&
          onSuccess != null) {
        onSuccess(context, state);
      } else if (state is bloc_form.FormBlocFailure<SuccessResponse, ErrorResponse> &&
          onFailure != null) {
        onFailure(context, state);
      } else if (state is bloc_form.FormBlocSubmissionCancelled<SuccessResponse, ErrorResponse> &&
          onSubmissionCancelled != null) {
        onSubmissionCancelled(context, state);
      } else if (state is bloc_form
          .FormBlocSubmissionFailed<SuccessResponse, ErrorResponse> &&
          onSubmissionFailed != null) {
        onSubmissionFailed(context, state);
      } else if (state is bloc_form.FormBlocDeleting<SuccessResponse, ErrorResponse> &&
          onDeleting != null) {
        onDeleting(context, state);
      } else if (state is bloc_form
          .FormBlocDeleteFailed<SuccessResponse, ErrorResponse> &&
          onDeleteFailed != null) {
        onDeleteFailed(context, state);
      } else if (state is bloc_form
          .FormBlocDeleteSuccessful<SuccessResponse, ErrorResponse> &&
          onDeleteSuccessful != null) {
        onDeleteSuccessful(context, state);
      }
    },
  );

  /// {@macro bloc_form.form_state.FormBlocLoading}
  final FormBlocListenerCallback<
      bloc_form.FormBlocLoading<SuccessResponse, ErrorResponse>,
      SuccessResponse,
      ErrorResponse>? onLoading;

  /// {@macro bloc_form.form_state.FormBlocLoaded}
  final FormBlocListenerCallback<
      bloc_form.FormBlocLoaded<SuccessResponse, ErrorResponse>,
      SuccessResponse,
      ErrorResponse>? onLoaded;

  /// {@macro bloc_form.form_state.FormBlocLoadFailed}
  final FormBlocListenerCallback<
      bloc_form.FormBlocLoadFailed<SuccessResponse, ErrorResponse>,
      SuccessResponse,
      ErrorResponse>? onLoadFailed;

  /// {@macro bloc_form.form_state.FormBlocSubmitting}
  final FormBlocListenerCallback<
      bloc_form.FormBlocSubmitting<SuccessResponse, ErrorResponse>,
      SuccessResponse,
      ErrorResponse>? onSubmitting;

  /// {@macro bloc_form.form_state.FormBlocSuccess}
  final FormBlocListenerCallback<
      bloc_form.FormBlocSuccess<SuccessResponse, ErrorResponse>,
      SuccessResponse,
      ErrorResponse>? onSuccess;

  /// {@macro bloc_form.form_state.FormBlocFailure}
  final FormBlocListenerCallback<
      bloc_form.FormBlocFailure<SuccessResponse, ErrorResponse>,
      SuccessResponse,
      ErrorResponse>? onFailure;

  /// {@macro bloc_form.form_state.FormBlocSubmissionCancelled}
  final FormBlocListenerCallback<
      bloc_form.FormBlocSubmissionCancelled<SuccessResponse, ErrorResponse>,
      SuccessResponse,
      ErrorResponse>? onSubmissionCancelled;

  /// {@macro bloc_form.form_state.FormBlocSubmissionFailed}
  final FormBlocListenerCallback<
      bloc_form.FormBlocSubmissionFailed<SuccessResponse, ErrorResponse>,
      SuccessResponse,
      ErrorResponse>? onSubmissionFailed;

  /// {@macro bloc_form.form_state.FormBlocSubmissionFailed}
  final FormBlocListenerCallback<
      bloc_form.FormBlocDeleting<SuccessResponse, ErrorResponse>,
      SuccessResponse,
      ErrorResponse>? onDeleting;

  /// {@macro bloc_form.form_state.FormBlocSubmissionFailed}
  final FormBlocListenerCallback<
      bloc_form.FormBlocDeleteFailed<SuccessResponse, ErrorResponse>,
      SuccessResponse,
      ErrorResponse>? onDeleteFailed;

  /// {@macro bloc_form.form_state.FormBlocSubmissionFailed}
  final FormBlocListenerCallback<
      bloc_form.FormBlocDeleteSuccessful<SuccessResponse, ErrorResponse>,
      SuccessResponse,
      ErrorResponse>? onDeleteSuccessful;

  /// If the [formBloc] parameter is omitted, [FormBlocListener]
  /// will automatically perform a lookup using
  /// [BlocProvider].of<[FormBloc]> and the current [BuildContext].
  final FormBloc2? formBloc;

  /// The [Widget] which will be rendered as a descendant of the [BlocListener].
  @override
  Widget? get child => super.child;
}




// import 'package:flutter/widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:bloc_form_plus/bloc_form.dart' as bloc_form;
//
// typedef FormBlocListenerCallback<
//         FormBlocState extends bloc_form
//             .FormBlocState<SuccessResponse, ErrorResponse>,
//         SuccessResponse,
//         ErrorResponse>
//     = void Function(BuildContext context, FormBlocState state);
//
// /// [BlocListener] that reacts to the state changes of the FormBloc.
// class FormBlocListener<
//         FormBloc extends bloc_form.FormBloc<SuccessResponse, ErrorResponse>,
//         SuccessResponse,
//         ErrorResponse>
//     extends BlocListener<FormBloc,
//         bloc_form.FormBlocState<SuccessResponse, ErrorResponse>> {
//   /// [BlocListener] that reacts to the state changes of the FormBloc.
//   /// {@macro bloclistener}
//   FormBlocListener({
//     Key? key,
//     this.formBloc,
//     Widget? child,
//     this.onLoading,
//     this.onLoaded,
//     this.onLoadFailed,
//     this.onSubmitting,
//     this.onSuccess,
//     this.onFailure,
//     this.onSubmissionCancelled,
//     this.onSubmissionFailed,
//     this.onDeleting,
//     this.onDeleteFailed,
//     this.onDeleteSuccessful,
//   }) : super(
//           key: key,
//           child: child,
//           bloc: formBloc,
//           listenWhen: (previousState, state) =>
//               previousState.runtimeType != state.runtimeType,
//           listener: (context, state) {
//             if (state is bloc_form.FormBlocLoading<SuccessResponse, ErrorResponse> &&
//                 onLoading != null) {
//               onLoading(context, state);
//             } else if (state is bloc_form.FormBlocLoaded<SuccessResponse, ErrorResponse> &&
//                 onLoaded != null) {
//               onLoaded(context, state);
//             } else if (state is bloc_form.FormBlocLoadFailed<SuccessResponse, ErrorResponse> &&
//                 onLoadFailed != null) {
//               onLoadFailed(context, state);
//             } else if (state is bloc_form
//                     .FormBlocSubmitting<SuccessResponse, ErrorResponse> &&
//                 onSubmitting != null) {
//               onSubmitting(context, state);
//             } else if (state is bloc_form.FormBlocSuccess<SuccessResponse, ErrorResponse> &&
//                 onSuccess != null) {
//               onSuccess(context, state);
//             } else if (state is bloc_form.FormBlocFailure<SuccessResponse, ErrorResponse> &&
//                 onFailure != null) {
//               onFailure(context, state);
//             } else if (state is bloc_form.FormBlocSubmissionCancelled<SuccessResponse, ErrorResponse> &&
//                 onSubmissionCancelled != null) {
//               onSubmissionCancelled(context, state);
//             } else if (state is bloc_form
//                     .FormBlocSubmissionFailed<SuccessResponse, ErrorResponse> &&
//                 onSubmissionFailed != null) {
//               onSubmissionFailed(context, state);
//             } else if (state is bloc_form.FormBlocDeleting<SuccessResponse, ErrorResponse> &&
//                 onDeleting != null) {
//               onDeleting(context, state);
//             } else if (state is bloc_form
//                     .FormBlocDeleteFailed<SuccessResponse, ErrorResponse> &&
//                 onDeleteFailed != null) {
//               onDeleteFailed(context, state);
//             } else if (state
//                     is bloc_form.FormBlocDeleteSuccessful<SuccessResponse, ErrorResponse> &&
//                 onDeleteSuccessful != null) {
//               onDeleteSuccessful(context, state);
//             }
//           },
//         );
//
//   /// {@macro bloc_form.form_state.FormBlocLoading}
//   final FormBlocListenerCallback<
//       bloc_form.FormBlocLoading<SuccessResponse, ErrorResponse>,
//       SuccessResponse,
//       ErrorResponse>? onLoading;
//
//   /// {@macro bloc_form.form_state.FormBlocLoaded}
//   final FormBlocListenerCallback<
//       bloc_form.FormBlocLoaded<SuccessResponse, ErrorResponse>,
//       SuccessResponse,
//       ErrorResponse>? onLoaded;
//
//   /// {@macro bloc_form.form_state.FormBlocLoadFailed}
//   final FormBlocListenerCallback<
//       bloc_form.FormBlocLoadFailed<SuccessResponse, ErrorResponse>,
//       SuccessResponse,
//       ErrorResponse>? onLoadFailed;
//
//   /// {@macro bloc_form.form_state.FormBlocSubmitting}
//   final FormBlocListenerCallback<
//       bloc_form.FormBlocSubmitting<SuccessResponse, ErrorResponse>,
//       SuccessResponse,
//       ErrorResponse>? onSubmitting;
//
//   /// {@macro bloc_form.form_state.FormBlocSuccess}
//   final FormBlocListenerCallback<
//       bloc_form.FormBlocSuccess<SuccessResponse, ErrorResponse>,
//       SuccessResponse,
//       ErrorResponse>? onSuccess;
//
//   /// {@macro bloc_form.form_state.FormBlocFailure}
//   final FormBlocListenerCallback<
//       bloc_form.FormBlocFailure<SuccessResponse, ErrorResponse>,
//       SuccessResponse,
//       ErrorResponse>? onFailure;
//
//   /// {@macro bloc_form.form_state.FormBlocSubmissionCancelled}
//   final FormBlocListenerCallback<
//       bloc_form.FormBlocSubmissionCancelled<SuccessResponse, ErrorResponse>,
//       SuccessResponse,
//       ErrorResponse>? onSubmissionCancelled;
//
//   /// {@macro bloc_form.form_state.FormBlocSubmissionFailed}
//   final FormBlocListenerCallback<
//       bloc_form.FormBlocSubmissionFailed<SuccessResponse, ErrorResponse>,
//       SuccessResponse,
//       ErrorResponse>? onSubmissionFailed;
//
//   /// {@macro bloc_form.form_state.FormBlocSubmissionFailed}
//   final FormBlocListenerCallback<
//       bloc_form.FormBlocDeleting<SuccessResponse, ErrorResponse>,
//       SuccessResponse,
//       ErrorResponse>? onDeleting;
//
//   /// {@macro bloc_form.form_state.FormBlocSubmissionFailed}
//   final FormBlocListenerCallback<
//       bloc_form.FormBlocDeleteFailed<SuccessResponse, ErrorResponse>,
//       SuccessResponse,
//       ErrorResponse>? onDeleteFailed;
//
//   /// {@macro bloc_form.form_state.FormBlocSubmissionFailed}
//   final FormBlocListenerCallback<
//       bloc_form.FormBlocDeleteSuccessful<SuccessResponse, ErrorResponse>,
//       SuccessResponse,
//       ErrorResponse>? onDeleteSuccessful;
//
//   /// If the [formBloc] parameter is omitted, [FormBlocListener]
//   /// will automatically perform a lookup using
//   /// [BlocProvider].of<[FormBloc]> and the current [BuildContext].
//   final FormBloc? formBloc;
//
//   /// The [Widget] which will be rendered as a descendant of the [BlocListener].
//   @override
//   Widget? get child => super.child;
// }
