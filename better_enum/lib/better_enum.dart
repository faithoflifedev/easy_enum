library better_enum;

class BetterEnum {
  final String toValue;

  final String toEnum;

  const BetterEnum({this.toValue = 'value', this.toEnum = ''});

  String get enumMethod =>
      toEnum != '' ? toEnum[0].toLowerCase() + toEnum.substring(1) : toEnum;
}
