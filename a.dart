import 'dart:io';

Future<List<int>> getNums() async {
  print("\"-\" ile ayrılmış bir tam sayı listesi giriniz:");
  String input = stdin.readLineSync()!;
  List<String> stringNums = input.split('-');

  List<int> numbers = stringNums.map((s) => int.parse(s.trim())).toList();
  return numbers;
}

Future<List<int>> multiplyByTwo(List<int> inputList) async {
  List<int> result = [];

  await Future.forEach(inputList, (int number) async {
    await Future.delayed(Duration(seconds: 1));
    print("İşlem sürüyor...");
    result.add(number * 2);
  });

  return result;
}

Future<void> main() async {
  List<int> numbers = await getNums();
  print("Girilen liste: $numbers");

  List<int> doubledNumbers = await multiplyByTwo(numbers);
  print("Sayıların 2 ile çarpılmış halleri: $doubledNumbers");
}
