class Laptop {
    int? id;
    String? name;
    int? ram;
    Laptop(this.id, this.name, this.ram);

    //Görüntüleme metodu
    void display(){
        print("Id of laptop named \"$name\" is $id. And it has $ram GB ram.");
  }
}
void main(){
//Farklı Laptop nesneleri oluşturma
Laptop laptop_1 = Laptop(54546346, "Ahmet's PC", 16);
Laptop laptop_2 = Laptop(68476451, "Fatih's PC", 8);
Laptop laptop_3 = Laptop(126585434653, "Ozgul's Office Computer", 32);
//Görüntüleme
laptop_1.display();
laptop_2.display();
laptop_3.display();
}