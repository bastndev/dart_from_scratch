import 'dart:async';

void main() {
  Timer.periodic(const Duration(seconds: 1), (timer) {
    final seconds = timer.tick;
    print("Seconds: $seconds");

    if(seconds == 15){
      timer.cancel();
      print("Bye perrito");
    }
  });

}
