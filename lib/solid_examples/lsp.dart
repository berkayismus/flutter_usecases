import 'package:flutter/foundation.dart';

abstract class Vehicle {
  void move();
}

abstract class FuelVehicle extends Vehicle {
  void refuel();
}

abstract class ElectricVehicle extends Vehicle {
  void charge();
}

class ElectricCar extends ElectricVehicle {
  @override
  void charge() {
    debugPrint("charging");
  }

  @override
  void move() {
    debugPrint("moving");
  }
}

class PetrolCard extends FuelVehicle {
  @override
  void move() {
    debugPrint("moving");
  }

  @override
  void refuel() {
    debugPrint("refilling the petrol");
  }

  void serviceFuelVehicle(FuelVehicle vehicle) {
    vehicle.refuel();
    // some more servicing activities
  }

  void serviceElectricVehicle(ElectricVehicle vehicle) {
    vehicle.charge();
    // some more servicing activities
  }
}
