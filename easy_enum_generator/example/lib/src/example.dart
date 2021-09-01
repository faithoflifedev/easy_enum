import 'package:easy_enum/easy_enum.dart';

part 'example.g.dart';

///default enumeration settings
@EasyEnum()
enum SimpleState { play, paused, stopped }

///custom method names to retrieve values
@EasyEnum(toValue: 'theValue', toEnum: 'theRating')
enum SomeRating { none, dislike, like }

///A simple test class
class Test {
  final String name;
  final SimpleState state;
  final SomeRating rating;

  Test(this.name, this.state, this.rating);
}
