import 'package:analyzer/dart/element/visitor.dart';
import 'package:build/build.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:recase/recase.dart';
import 'package:source_gen/source_gen.dart';
import 'package:easy_enum/easy_enum.dart';

class EasyEnumGenerator extends GeneratorForAnnotation<EasyEnum> {
  @override
  String generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    final className = element.displayName;

    final visitor = ModelVisitor(className);

    final toValue = annotation.read('toValue').stringValue;

    final toEnum = annotation.read('toEnum').stringValue;

    final methodName = toEnum == '' ? className.camelCase : toEnum.camelCase;

    final buffer = StringBuffer();

    element.visitChildren(visitor);

    buffer.write('\nextension ${className}Ext on $className {\n');
    buffer.write('\tString get $toValue => [');
    buffer
        .write(visitor.fields.map((field) => '\'$field\'').toList().join(','));
    buffer.write('][index];\n');
    buffer.write('}\n');

    buffer.write('\nextension ${className}Txe on String {\n');
    buffer.write('\t' + className + '? get $methodName => {\n');
    visitor.fields.forEach(
        (field) => buffer.write('\t\t\t\'$field\': $className\.$field,\n'));
    buffer.write('\t\t}[this];\n');
    buffer.write('}\n');

    return buffer.toString();
  }
}

class ModelVisitor extends SimpleElementVisitor {
  final List<String> fields = [];

  final String className;

  ModelVisitor(this.className);

  @override
  dynamic visitFieldElement(FieldElement element) {
    if (element.type.getDisplayString(withNullability: true) == className) {
      fields.add(element.name);
    }
  }
}
