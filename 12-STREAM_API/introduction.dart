//--- --- -FIXME: (Subscribe) pause, play cancel
import 'dart:io';

void main() async {
  final file = File('files/long.txt');

  Stream<List<int>> readStream = file.openRead();

  int events = 0;

  // ignore: unused_local_variable
  await for (final data in readStream) {
    events++;
  }

  final kb = file.lengthSync() / 1024;
  final averageKb = kb / events;

  print("Events: $events");
  print("Average size  of each event: $averageKb");
}
