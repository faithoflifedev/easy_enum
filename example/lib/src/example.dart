import 'package:better_enum/better_enum.dart';

part 'example.g.dart';

@BetterEnum()
enum VideoState { play, paused, stopped }

@BetterEnum(toValue: 'theValue', toEnum: 'theRating')
enum VideoRating { none, dislike, like }

class Test {
  void myFunc() {
    print('paused'.videoState == VideoState.paused);

    print(VideoState.paused.value);

    print('none'.theRating == VideoRating.none);

    print(VideoRating.none.theValue);
  }
}
