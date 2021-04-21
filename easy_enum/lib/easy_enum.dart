library easy_enum;

class EasyEnum {
  final String toValue;

  final String toEnum;

  const EasyEnum({this.toValue = 'value', this.toEnum = ''});

  String get enumMethod =>
      toEnum != '' ? toEnum[0].toLowerCase() + toEnum.substring(1) : toEnum;
}
