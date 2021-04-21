import 'package:easy_enum/easy_enum.dart';

part 'example.g.dart';

@EasyEnum()
enum VideoState { play, paused, stopped }

@EasyEnum(toValue: 'theValue', toEnum: 'theRating')
enum VideoRating { none, dislike, like }

class Test {
  void myFunc() {
    print('paused'.videoState == VideoState.paused);

    print(VideoState.paused.value);

    print('none'.theRating == VideoRating.none);

    print(VideoRating.none.theValue);
  }
}
