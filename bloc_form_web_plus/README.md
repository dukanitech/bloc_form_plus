# bloc_form_web_plus

Interactive documentation and demos for **`bloc_form_plus`** / **`flutter_bloc_form_plus`** **0.3.2**.

Live site: [https://dukanitech.github.io/bloc_form_plus/](https://dukanitech.github.io/bloc_form_plus/)

## Requirements

* Flutter **3.50.0+** (see repo `.fvmrc`)
* Dart **3.12+** (`sdk: '>=3.8.0 <4.0.0'`)

## Run locally

From the monorepo root (`bloc_form/`):

```bash
fvm dart run melos bootstrap
cd bloc_form_web_plus
fvm flutter run -d chrome
```

## Dependency shown in tutorials

```yaml
dependencies:
  flutter_bloc_form_plus: ^0.3.2
```

`flutter_bloc_form_plus` pulls in `bloc_form_plus: ^0.3.2`. Apps that also depend on `equatable` should use **`equatable: ^3.0.0`**.

## What's covered

* Simple login / wizard / async validation / conditional & list fields
* Built-in Material + adaptive / Cupertino builders
* **What's New 0.3.2** — Equatable 3, `clearErrors`, `fields`, RadioGroup, SensitiveContent, TypeAhead
