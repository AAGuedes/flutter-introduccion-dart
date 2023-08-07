void main() {
  
  final flipper = Dolphin();
  flipper.swim();
  
  final batman = Bat();
  batman.fly();
  batman.walk();
  
  final donald = Duck();
  donald.fly();
  donald.swim();
  donald.walk();
}

abstract class Animal {}

abstract class Mammal extends Animal {}
abstract class Bird extends Animal {}
abstract class Fish extends Animal {}

mixin Fly {
  void fly() => print('Fly!');
}

mixin Walk {
  void walk() => print('Walk!');
}

mixin Swim {
  void swim() => print('Swim!');
}

class Dolphin extends Mammal with Swim {}
class Bat extends Mammal with Fly, Walk {}
class Cat extends Mammal with Walk {}

class Dove extends Bird with Walk, Fly {}
class Duck extends Bird with Walk, Swim, Fly {}

class Shark extends Fish with Swim {}
class FlyingFish extends Fish with Swim, Fly {}
