import 'dart:async';

void main() { 
  //StreamController
  StreamController<int> controller = StreamController<int>(); //create controller
  //Stream
  Stream stream = controller.stream; //chanel for share data

  // Subscription
  StreamSubscription subscription = stream.listen((value) { //reception value
    print("This is the value: $value");
  });

  //add a value
  controller.add(10);
  controller.add(20);
  controller.add(30);
  //EventSink
}