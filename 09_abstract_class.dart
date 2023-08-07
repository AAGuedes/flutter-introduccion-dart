void main() {
  
  final windPlant = WindPlant(initialEnergy: 9);

  print('Wind: ${chargePhone(windPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if(plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }
  return plant.energyLeft - 10;
}

enum PlantType {
  nuclear, wind, water, sun
}

abstract class EnergyPlant {

  double energyLeft;
  PlantType type;
  
  void consumeEnergy(double amount);
  
  EnergyPlant({
    required this.energyLeft,
    required this.type
  });
}

class WindPlant extends EnergyPlant {
  
  WindPlant({required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PlantType.wind);
  
  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}
