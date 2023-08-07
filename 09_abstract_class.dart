void main() {
  
  final windPlant = WindPlant(initialEnergy: 100);
  final solarPlant = SolarPlant(energyLeft: 1000);

  print('Wind: ${chargePhone(windPlant)}');
  print('Solar: ${chargePhone(solarPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if(plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }
  return plant.energyLeft - 10;
}

enum PlantType {
  wind, water, solar
}

abstract class EnergyPlant {

  double energyLeft;
  final PlantType type;
  
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

class SolarPlant implements EnergyPlant {
  
  @override
  double energyLeft;
  
  @override
  final PlantType type = PlantType.solar;
  
  SolarPlant({required this.energyLeft});
  
  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 1.25);
  }
}
