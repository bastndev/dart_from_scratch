/* void main() {
  const timeout = Duration(milliseconds: 750);
  const wait = Duration(seconds: 1);

  Future.delayed(wait, () {
    print("I will run");
  }).timeout(timeout).then((value) {}, onError: (err) {
    print("On error: $err");
  });

}
 */

/* void main() {
  const timeout = Duration(milliseconds: 750);
  const wait = Duration(seconds: 1);

  Future.delayed(wait, () {
    print("I will run");
  }).timeout(timeout).catchError((err) {
    print("catchError: $err");
  });
}
 */

/* void main() {
  const timeout = Duration(milliseconds: 750);
  const wait = Duration(seconds: 1);

  Future.delayed(wait, () {
    print("I will run");
  }).timeout(timeout).onError((err, stackTrace) {
    print("onError: $err");
  });
} */

//--- --- -FIXME: Recommend for use 
void main() async{
  const timeout = Duration(milliseconds: 750);
  const wait = Duration(seconds: 1);

  try {
    await Future.delayed(wait, () {
      print("I will run");
    }).timeout(timeout);
  } catch (err) {
    print("try catch: $err");
  }
}
