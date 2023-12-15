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

/* class Music {
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
 */

/* class VideoGames {
  final String dota2;
  final String lol;
  final String gta5;

  VideoGames({required this.dota2, required this.lol, required this.gta5});

  @override
  String toString() {
    return "VideoGames 2023: \n$dota2 \n$lol \n$gta5";
  }
}

void main() {
  final games = VideoGames(dota2: 'Dota 2', lol: 'League og legends', gta5: 'GTA 5');
  print(games);
} */

/* class VideoGames {
  late String dota2;
  late String lol;
  late String gta5;

  VideoGames({required this.dota2, required this.lol, required this.gta5});

  @override
  String toString() {
    return "VideoGames 2023: \n$dota2 \n$lol \n$gta5";
  }
}

void main() {
  final games = VideoGames(dota2: 'Dota 2', lol: 'League og legends', gta5: 'GTA 5');
  print(games);
} */