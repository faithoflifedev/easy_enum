import 'package:build/build.dart' show Builder, BuilderOptions;
import 'package:easy_enum_generator/src/easy_enum_generator.dart';
import 'package:source_gen/source_gen.dart';

Builder serializeGeneratorBuilder(BuilderOptions options) =>
    SharedPartBuilder([EasyEnumGenerator()], 'EasyEnum');
