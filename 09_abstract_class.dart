void main() {
  
//  final windPlant = EnergyPlant();

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
