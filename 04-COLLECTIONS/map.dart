// -FIXME: The map method allows us to go through each element of a list and transform it into another type of data

/* void main() {
  final names = [
    'flutter',
    'google',
    'apple',
    'kotlin',
    'vercel',
    'react',
    'javascript',
  ];

  final workCounts = names.map((e) => e.length).toList();
  print(workCounts);
}
 */

void main() {
  final names = [
    'flutter',
    'google',
    'apple',
    'kotlin',
    'vercel',
    'react',
    'javascript',
  ];

  final modified = names.map((e) => '$e has a length of: ${e.length} \n').toList();
  print(modified);
}
