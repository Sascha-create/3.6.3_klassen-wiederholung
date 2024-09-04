import 'dart:io';
import 'person.dart';

class CitizensOffice {
  List<Person> persons;

  CitizensOffice(this.persons);
/*
  void changeAdress(){
    
  }
*/
  void capturePersons() {
    print("Es sind insgesamt ${persons.length} Personen im Büro.");
  }

  void wichPersons() {
    int index = 0;
    stdout.write("Es sind ");
    for (int i = 0; i < persons.length; i++) {
      stdout.write("${persons[index].name}, ");
      index++;
    }
    stdout.write("im Bürgerbüro.\n");
  }
}

void main() {
  Adress kaisAdress = Adress("Dartstrasse", 5, 76448, "Darthausen");
  Person kai = Person("Kai Hatje", 22, kaisAdress);
  Adress sobhisAdress = Adress("Dartstrasse", 7, 76448, "Darthausen");
  Person sobhi = Person("Sobhi Hammoud", 40, sobhisAdress);
  Adress dennisAdress = Adress("maxmusterstrasse", 1, 1234, "Musterort");
  Person dennis = Person("Dennis Durmus", 18, dennisAdress);

  List<Person> actualPersons = [
    Person("Kai Hatje", 22, kaisAdress),
    Person("Sobhi Hammoud", 40, sobhisAdress)
  ];

  CitizensOffice nameChangeOffice = CitizensOffice(actualPersons);
  nameChangeOffice.capturePersons();
  nameChangeOffice.wichPersons();

  kai.newAdress(Adress("Flutterstrasse", 10, 76877, "Flutterhausen"));
  
  print(kai.personsAdress.streetName);
  dennis.newAdress(kaisAdress);
  print(dennis.personsAdress.streetName);
}
