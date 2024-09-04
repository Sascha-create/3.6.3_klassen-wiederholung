import 'hello_world.dart';
import 'person.dart';

void main() {
  HelloWorld.getHelloWorld();


  Adress kaisAdress = Adress("Dartstrasse", 5, 76448, "Darthausen");
  Person kai = Person("Kai Hatje", 22, kaisAdress);

  print("${kai.age}");
  kai.newAge(55);
  print("${kai.age}");
}
