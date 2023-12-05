import 'dart:io';

void main() {
  print("1. sayıyı girin:");
  int num1 = int.parse(stdin.readLineSync()!);
  print("2. sayıyı girin:");
  int num2 = int.parse(stdin.readLineSync()!);

  print("Lütfen 3 saniye bekleyiniz");
  Future.delayed(Duration(seconds: 3), () {
    int sum = num1 + num2;
    print("Toplam: $sum");
  });
}
