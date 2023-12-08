/* void main() {
  double note1, note2, note3;

  note1 = 5.5;
  note2 = 4.0;
  note3 = 7.0;

  final sum = note1 + note2 + note3;
  final media = sum / 3;
  // print('The media is  ${media.toStringAsFixed(2)}');

  if (media < 5) {
    print("Sorry you disapproved whit  $media ");
  } else if (media >= 5 && media <= 7) {
    print("You approved whit $media");
  } else {
    print("Excellent whit $media");
  }
}
 */

void main() {
  double note1, note2, note3;

  note1 = 5.5;
  note2 = 4.0;
  note3 = 7.0;

  final sum = (note1 + note2 + note3) / 3;

  if (sum < 5) {
    print("Sorry you disapproved whit  $sum ");
  } else if (sum >= 5 && sum <= 7) {
    print("You approved whit $sum");
  } else {
    print("Excellent whit $sum");
  }
}
