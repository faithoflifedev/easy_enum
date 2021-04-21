import 'package:easy_enum/easy_enum.dart';

part 'example.g.dart';

@EasyEnum()
enum SimpleState { play, paused, stopped }

@EasyEnum(toValue: 'theValue', toEnum: 'theRating')
enum SomeRating { none, dislike, like }

class Test {
  void myFunc() {
    print('paused'.simpleState == SimpleState.paused);

    print(SimpleState.paused.value);

    print('none'.theRating == SomeRating.none);

    print(SomeRating.none.theValue);
  }
}
