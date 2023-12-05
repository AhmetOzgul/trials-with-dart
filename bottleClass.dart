abstract class Bottle {
  void open();
  factory Bottle.createCokeBottle() {
    return CokeBottle();
  }
}

class CokeBottle implements Bottle {
  @override
  void open() {
    print("Coke bottle is opened.");
  }
}

void main() {
  var cokeBottle_1 = Bottle.createCokeBottle();
  cokeBottle_1.open();
}
