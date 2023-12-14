import 'dart:math';

sealed class Vehicle {
  hello() {
    print("I'm a $runtimeType ");
  }
}

class Car extends Vehicle {}

class Trunk extends Vehicle {}

class Bus extends Vehicle {}

class Motorbike extends Vehicle {}

class Bicycle extends Vehicle {}

Vehicle getVehicle() {
  final list = [Car(), Bus(), Trunk(), Motorbike(), Bicycle()];
  int random = Random().nextInt(list.length);
  return list[random];
}

void main() {
  final vehicle = getVehicle();
  switch (vehicle) {
    case Car():
      vehicle.hello();
      break;
    case Bus():
      vehicle.hello();
      break;
    case Trunk():
      vehicle.hello();
      break;
    case Motorbike():
      vehicle.hello();
      break;
    case Bicycle():
      vehicle.hello();
      break;
  }
}
