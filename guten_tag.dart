/*
Schreibe eine Klasse, die mit einem Namen instanziiert wird 
und eine Methode hat, die den Namen mit "Guten Tag, " davor auf der Konsole ausgibt. 
Schreibe eine Methode, die den Namen auf einen anderen Namen setzt.
*/

class GoodDay {
  String name;

  GoodDay(this.name);

  void sayGoodDay() {
    print("Guten Tag, $name");
  }

  void changeName(String newName) {
    name = newName;
  }
}

void main() {
  GoodDay name1 = GoodDay("Sascha");
  name1.sayGoodDay();
  name1.changeName("Kai");
  name1.sayGoodDay();
}
