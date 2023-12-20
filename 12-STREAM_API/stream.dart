import 'dart:async';

// Listen only for one subscription
/* void main() { 
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
} */

//Listen for 2 or more subscription
void main() { 
  //StreamController
  StreamController<int> controller = StreamController.broadcast(); //create controller
  //Stream
  Stream stream = controller.stream; //chanel for share data

  // Subscription
  StreamSubscription subscription = stream.listen((value) { //reception value
    print("This is the value: $value");
  });

    // ignore: unused_local_variable
    StreamSubscription subscription2 = stream.listen((value) { //reception value
    print("This is the value2: $value");
  });

  //add a value
  controller.add(10);
  controller.add(20);
  controller.add(30);

  subscription.pause();
  subscription.resume();
  subscription.cancel();

  //---EventSink
  // listen reverse stream
}