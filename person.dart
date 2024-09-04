class Person {
  String name;
  int age;
  Adress personsAdress;

  Person(this.name, this.age, this.personsAdress);

  String newName(String newName) {
    return name = newName;
  }

  int newAge(int newAge) {
    return age = newAge;
  }
}

class Adress {
  String streetName;
  int houseNumber;
  int zipCode;
  String location;

  Adress(this.streetName, this.houseNumber, this.zipCode, this.location);
}

void main() {
  Adress kaisAdress = Adress("Dartstrasse", 5, 76448, "Darthausen");
  Person kai = Person("Kai Hatje", 22, kaisAdress);

  print("${kai.age}");
  kai.newAge(55);
  print("${kai.age}");
}
