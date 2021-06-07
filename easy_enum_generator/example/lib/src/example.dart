import 'package:easy_enum/easy_enum.dart';

part 'example.g.dart';

@EasyEnum()
enum SimpleState { play, paused, stopped }

@EasyEnum(toValue: 'theValue', toEnum: 'theRating')
enum SomeRating { none, dislike, like }

class Test {
  final String name;
  final SimpleState state;
  final SomeRating rating;

  Test(this.name, this.state, this.rating);
}
