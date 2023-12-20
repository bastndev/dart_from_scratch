/* void main() {
  Stream<int> stream = Stream.empty();

  stream.listen((event) {
    print(event);
  }, onDone: () {
    print("Finished Stream");
  });
}
 */

// --- Stream error
/* void main() {
  Stream<int> stream = Stream.error("This is a message to error");

  stream.listen((event) {
    print(event);
  }, onDone: () {
    print("Finished Stream");
  }, onError: (err){
    print("Hello $err");
  });
} */

// --- Stream Value | Stream mono subscription
void main() {
  Stream<int> stream = Stream.value(2);

  stream.listen((event) {
    print(event);
  }, onDone: () {
    print("Finished Stream");
  });
}
