//--- --- -TODO: Record
import 'dart:math';

void main() {
  var (x, y, z) = random3d();
  print("The point is: ($x, $y, $z)");
}

(int, int, int) random3d() {
  int x = Random().nextInt(10);
  int y = Random().nextInt(10);
  int z = Random().nextInt(10);

  return (x, y, z);
}
