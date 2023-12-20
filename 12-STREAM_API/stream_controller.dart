import 'dart:async';

/* void main() async {
  StreamController<int> controller = StreamController();
  final sick = controller.sink;
  final stream = controller.stream;

  final subscription = stream.listen(print, onDone: () {
    print("Finished subscription");
  });

  controller.add(10);
  sick.add(11);
  await Future.delayed(const Duration(milliseconds: 1000));
  subscription.pause();
  controller.add(5);
  subscription.resume();
} */

void main() async {

  await asyncFunction();
  print("I printed  fist next async"); 

  StreamController<int> controller = StreamController();
  final sick = controller.sink;
  final stream = controller.stream;

  final subscription = stream.listen(print, onDone: () {
    print("Finished subscription");
  });

  controller.add(10);
  sick.add(11);
  await Future.delayed(const Duration(milliseconds: 1000));
  // subscription.pause();
  await controller.addStream(Stream.fromIterable([1,2,3,4,5,6]));
  controller.add(5);
  controller.close();
  controller.add(33);

  subscription.cancel();
}

Future<void> asyncFunction()async {
  await Future.delayed(const Duration(seconds: 1));
  print("Method async");
}