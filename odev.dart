import 'dart:io';

void main() {
  print("Lütfen yapmak istediğiniz işlemi seçiniz.");
  print("""Toplama işlemi için 1'i,
Çıkarma işlemi için 2'yi,
Çarpma işlemi için 3'ü,
Bölme işlemi için 4'ü,
Hesap makinesini kapatmak için 0'ı tuşlayınız:""");

  int? secim = int.parse(stdin.readLineSync()!);

// Hangi işlemin yapılacağını belirleyen fonksiyon
  switch (secim) {
    case 0:
      print("Çıkış yapılıyor.\n---------------\n");
    case 1:
      hesapla("Toplama");
    case 2:
      hesapla("Çıkarma");
    case 3:
      hesapla("Çarpma");
    case 4:
      hesapla("Bölme");
    default:
      print("Geçersiz bir sayı girdiniz.\n\n");
  }
}

// İşlem için kullanıcıdan sayı alan ve işlem fonksiyonunu çağıran fonksiyon
void hesapla(String islem) {
  print("$islem işlemi için ilk sayıyı seçiniz:");
  double x = double.parse(stdin.readLineSync()!);
  print("$islem işlemi için ikinci sayıyı seçiniz");
  double y = double.parse(stdin.readLineSync()!);

  switch (islem) {
    case "Toplama":
      toplama(x, y);
    case "Çıkarma":
      cikarma(x, y);
    case "Çarpma":
      carpma(x, y);
    case "Bölme":
      bolme(bolunen: x, bolen: y);
  }
  print("\n---------------\n");
  main();
}

// Dört İşlemin Fonksiyon Tanımları
void toplama(double sayi1, double sayi2, [double sayi3 = 0]) {
  print("Toplam: ${sayi1 + sayi2 + sayi3}");
}

void cikarma(double sayi1, double sayi2) {
  print("Fark: ${sayi1 - sayi2}");
}

void carpma(double sayi1, double sayi2) {
  print("Çarpım: ${sayi1 * sayi2}");
}

void bolme({required bolunen, required double bolen}) {
  print("Bölüm: ${bolunen / bolen}");
}
