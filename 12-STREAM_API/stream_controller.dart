import 'dart:async';

void main() async {
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

}
