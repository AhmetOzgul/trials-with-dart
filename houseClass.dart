class House {
    int? id;
    String? name;
    int? prize;

    //Constructor
    House(this.id, this.name, this.prize);

    //Ev özelliklerini görüntüleme metodu
    void display(){
        print("House Name: $name\nHouse ID: $id\nHouse Prize: $prize\$\n");
  }
}
void main(){
  //Farklı ev nesneleri oluşturma
  House house_1 = House(123, "Ahmet's House", 200000);
  House house_2 = House(123567, "Mehmet's House", 100000);
  House house_3 = House(765734, "Ömer's House", 150000);

  //Liste oluşturma
  List<House> houses = [house_1, house_2, house_3];

  print(houses);
  houses.forEach((house) => house.display());
}