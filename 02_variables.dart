void main() {
  
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final sprites = <String>['ditto/front.png', 'ditto/back.png'];

  // dynamic == null
  // Es nullable pero hay que tener cuidado de que cambie con el tiempo
  // ya que puede ocasionar error
  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = [1,2,3];
  errorMessage = {1,2,3};
  errorMessage = () => true;
  errorMessage = null;

  // La siguiente linea no muestra error sin embargo ocasiona uno
  //errorMessage += 1;
  
  print("""
    $pokemon
    $hp
    $isAlive
    $abilities
    $sprites
    $errorMessage
  """);
  
}
