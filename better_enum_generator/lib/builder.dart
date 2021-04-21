import 'package:build/build.dart' show Builder, BuilderOptions;
import 'package:better_enum_generator/src/better_enum_generator.dart';
import 'package:source_gen/source_gen.dart';

Builder serializeGeneratorBuilder(BuilderOptions options) =>
    SharedPartBuilder([BetterEnumGenerator()], 'betterEnum');
