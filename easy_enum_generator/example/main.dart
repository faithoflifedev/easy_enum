import 'lib/example_usage.dart';

void main(List<String> arguments) {
  print('test:');

  var test = Test('name', SimpleState.paused, SomeRating.none);

  print('paused'.simpleState == test.state); //true

  print(SimpleState.paused.value); //paused

  print('none'.theRating == test.rating); //true

  print(SomeRating.none.theValue); //none
}
