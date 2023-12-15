/* class Music {
  final String artName;
  final String nameSong;
  final num reproductions;

  Music({
    required this.artName,
    required this.nameSong,
    required this.reproductions,
  });
}

void main() {
  final myMusic = Music(
      artName: 'Juan Gabriel', nameSong: 'Despasito', reproductions: 111.300);

  print(myMusic.artName);
  print(myMusic.nameSong);
  print(myMusic.reproductions);
}
 */

class Music {
  final String artName;
  final String nameSong;
  final num reproductions;

  Music({
    required this.artName,
    required this.nameSong,
    required this.reproductions,
  });

  @override
  String toString() {
    return 'Music{artName: $artName, nameSong: $nameSong, reproductions: $reproductions}';
  }
}

void main() {
  final myMusic = Music(
      artName: 'Juan Gabriel', nameSong: 'Despacito', reproductions: 111300);

  print(myMusic);
}
