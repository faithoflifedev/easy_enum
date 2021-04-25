[![Pub Package](https://img.shields.io/pub/v/easy_enum_generator.svg)](https://pub.dev/packages/easy_enum_generator)

Provides [Dart Build System](https://pub.dev/packages/build) builder for generating `EasyEnum` extensions for classes annotated with [easy_enum](https://pub.dev/packages/easy_enum).

## Usage

#### In your `pubspec.yaml` file:
- Add to `dependencies` section `easy_enum: ^1.0.0`
- Add to `dev_dependencies` section `easy_enum_generator: ^1.0.1`
- Add to `dev_dependencies` section `build_runner: ^2.0.0`
- Set `environment` to at least Dart 2.12.0 version like so: `">=2.12.0 <3.0.0"`

Your `pubspec.yaml` should look like so:

```yaml
name: project_name
description: project description
version: 1.0.0

environment:
  sdk: ">=2.12.0 <3.0.0"

dependencies:
  ...
  easy_enum: ^2.0.0
  
dev_dependencies:
  ...
  build_runner: ^2.0.0
  easy_enum_generator: ^1.0.1
```

#### Annotate your class with `EasyEnum` annotation:

```dart
import 'package:easy_enum/easy_enum.dart';

part 'basic_class.g.dart';

@EasyEnum()
enum SimpleState { play, paused, stopped }

@EasyEnum(toValue: 'theValue', toEnum: 'theRating')
enum SomeRating { none, dislike, like }

class BasicClass {
  ...
}
```

Make sure that you set the part file as in the example above `part 'your_file_name.g.dart';`.

#### Launch code generation:

```
flutter pub run build_runner build
```

#### The extension will be generated:

```dart
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_class.dart';

// **************************************************************************
// EasyEnumGenerator
// **************************************************************************

extension SimpleStateExt on SimpleState {
  String get value => ['play', 'paused', 'stopped'][index];
}

extension SimpleStateTxe on String {
  SimpleState? get simpleState => {
        'play': SimpleState.play,
        'paused': SimpleState.paused,
        'stopped': SimpleState.stopped,
      }[this];
}

extension SomeRatingExt on SomeRating {
  String get theValue => ['none', 'dislike', 'like'][index];
}

extension SomeRatingTxe on String {
  SomeRating? get theRating => {
        'none': SomeRating.none,
        'dislike': SomeRating.dislike,
        'like': SomeRating.like,
      }[this];
}
```

Now the code that previously would have looked like this:

```dart
String getStringFromSimpleState(SimpleSate simple) {
  switch (simple) {
    case SimpleSate.play: return 'play';
    case SimpleSate.paused: return 'paused';
    case SimpleSate.stopped: return 'stopped';
  }
}
...
var someVar = getStringFromSimpleState(SimpleSate.paused);

print('$someVar');
...
```

Gets simplified to:

```dart
...
print(SimpleSate.paused.value);
...
```

In addtion, you can turn a string into its associated `enum`:

```dart
String someVal = getStatusFromApi();  //returns the string 'paused'

if ( someVal.simpleState == SimpleState.paused ) {
  ...
}
```

## Additional features

#### Alternate getter names

By default you can get the string representation of your enum using the `value` getter and get the `enum` representation to the string by 
using the `camelCase` name of the enum, ex. with "enum SimpleState ..." the enum is retrieved with "myString.simpleState".

If you want to change the getter names for retrieving the related `enum` values you can add parameters to the annotation like this:

```dart
@EasyEnum(toValue: 'theValue', toEnum: 'theState')
enum SimpleState { play, paused, stopped }
```

Now the getter methods have been altered allowing retrieval with:

```dart
print(SimpleSate.paused.theValue);

print('paused'.theState == SimpleState.paused);
```