// --- --- -FIXME: asBroadcastStream transform one stream mono subscription to stream multi Subscription
void main() {
  Stream<int> stream = Stream.value(5);
  Stream<int> broadcastStream = stream.asBroadcastStream();

  broadcastStream.listen((event) { });
  broadcastStream.listen((event) { });
}
