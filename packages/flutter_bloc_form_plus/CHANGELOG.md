
# 0.1.0

Initial Version of the library.

# 0.1.2

*✅ Upgrade*
### Upgraded project to Flutter 3.32.0, ensuring compatibility with the latest Dart SDK and Flutter framework features.

## 🔁 Migration
* **`Migrated from deprecated:`**

* **`MaterialState → WidgetState`**

* **`MaterialStateProperty → WidgetStateProperty`**

* **`Replaced deprecated Opacity usage with modern withValues alternatives`**.

* **`Updated widget code to remove redundant constructors using super to streamline class initialization.`**

## 🧹 Cleanup
* **`Removed redundant constructor boilerplate by leveraging super where applicable.`**

* **`Fixed invalid use of private types in public APIs to comply with Dart 3+ type safety.`**

## 🐞 Fixes
Fixed common issue with BuildContext usage across async gaps, avoiding errors caused by calling context after await.

# 0.1.3
* **`Changed from InputDecorationTheme to InputDecorationThemeData`**

* **`Upgrade to support flutter 3.35`**
* **`Upgrade Bloc to latest version 9.1.1`**

# 0.2.0

**Date:** 2025-09-20

**Changes:**

* **New Enum:** `RadioDirection`  
  * Values: `left`, `right`, `top`, `bottom`  
  * Allows controlling the **position of the label relative to the radio button**.

* **New Widget:** `RadioGroupFieldBlocBuilder`  
  * Fully supports **label and radio alignment** using the `RadioDirection` enum.  
  * Supports **group layout customization**:
    * `GridView Style` for multi-column layouts  
    * `Wrap Stayle` for flexible, auto-wrapping items  
    * `Flex style` for row or column alignment  
  * Uses latest **RadioGroup features** from Flutter for selection, focus, and accessibility.

* **Customizable Features:**  
  * Label and radio alignment controlled per item or globally.  
  * Works with `FieldBloc` state for **reactive updates**.  
  * Supports **validation and error messages** as in other FieldBloc builders.

* **Example Usage:**
```dart
RadioGroupFieldBlocBuilder<String>(
                            selectFieldBloc: formBloc.select2X,
                            itemBuilder: (context, item) => FieldItem(child: Text(item)),
                            direction: RadioDirection.right,
                            radioSize: 24,
                            spacing: 2,
                            padding: const EdgeInsets.all(4),
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            groupStyle: const WrapGroupStyle(
                           //   direction: Axis.vertical,
                              alignment: WrapAlignment.center,      // center items horizontally
                              spacing: 8,                           // 8px space between items
                              runAlignment: WrapAlignment.center,   // center rows vertically
                              runSpacing: 12,                        // 12px space between rows
                              crossAxisAlignment: WrapCrossAlignment.center, // center items in each row
                            )
                          );

```

* **New Widget:** `RadioMenuButtonFieldBlocBuilder`
  * Provides a **Material 3 `RadioMenuButton` implementation** integrated with `FieldBloc`.
  * Supports reactive **selected value updates**, **validation**, and **customized labels**.
  * Works well for **dropdown-like radio selection menus** in forms.