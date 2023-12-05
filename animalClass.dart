class Animal {
  int? id;
  String? name, color;
  Animal(this.id, this.name, this.color);
}

class Cat extends Animal {
  String? breed;
  Cat(id, name, color, this.breed) : super(id, name, color);
}

void main() {
  var cat_1 = Cat(123, "Dobby", "Yellow", "Scottish Fold");

  print(
      "Name of animal: ${cat_1.name}\nBreed: ${cat_1.breed}\nColor: ${cat_1.color}\nID: ${cat_1.id}");
}
