void main() {

  final Map<String, dynamic> rawJson = {
    'name': 'Peter Parker',
    'power': 'Spider',
    'isAlive': true
  };
  
  final ironman = Hero(
    isAlive: false,
    power: 'Technology',
    name: 'Tony Stark'
  );
  
  final spiderman = Hero.fromJson(rawJson);

  print(ironman);
  print(spiderman);
}

class Hero {
  
  String name;
  String power;
  bool isAlive;
  
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No isAlive found';
  
  @override
  String toString() {
    return '$name. $power, isAlive: ${isAlive ? 'Yes':'No'}';
  }
}
