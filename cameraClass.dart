class Camera {
  int _id, _prize;
  String _brand, _color;
  Camera(this._id, this._brand, this._color, this._prize);
  void displayDetails() {
    print(
        "Camera $_id properties:\nBrand: ${_brand}\nColor: ${_color}\nPrize: \$${_prize}\n");
  }

  int get id => _id;
  set id(int id) {
    _id = id;
  }

  int get prize => _prize;
  set prize(int prize) {
    _prize = prize;
  }

  String get brand => _brand;
  set brand(String brand) {
    _brand = brand;
  }

  String get color => _color;
  set color(String color) {
    _color = color;
  }
}

void main() {
  Camera camera_1 = Camera(1, "Sony", "Grey", 500);
  Camera camera_2 = Camera(2, "GoPro", "Black", 400);
  Camera camera_3 = Camera(3, "Canon", "Anthracite", 600);
  camera_1.displayDetails();
  camera_2.displayDetails();
  camera_3.displayDetails();
}
