import 'dart:io';

class Question {
  String? quest;
  String? answer;
  Question({required this.quest, required this.answer});
}

int questNum = 0;
int score = 0;
String? userAnswer;

List<Question> questBank = [
  Question(
      quest:
          "Mustafa Kemal Atatürk'e matematik öğretmeninin verdiği isim hangisidir?",
      answer: "kemal"),
  Question(
      quest: "Ondokuz Mayıs Üniversitesi hangi yılda kurulmuştur?",
      answer: "1975"),
  Question(quest: "Plaka kodu 55 olan ilimiz hangisidir?", answer: "samsun"),
  Question(quest: "En küçük asal sayı hangisidir?", answer: "2"),
  Question(
      quest:
          "Kangal köpeği ismiyle bilinen köpek hangi şehrimizde yetişmektedir?",
      answer: "sivas"),
  Question(
      quest: "Uçaklarda kara kutu ismiyle bilinen parça hangi renktir?",
      answer: "turuncu"),
  Question(
      quest:
          "Tüm dünyada kullanılan onlu ordu sistemini hangi Türk hükümdar bulmuştur?",
      answer: "mete han"),
  Question(
      quest: "Prof. Dr. Aziz Sancar hangi alanda nobel ödülü almıştır?",
      answer: "kimya"),
  Question(
      quest:
          "2. Köprü olarak bilinen köprü ismini hangi Osmanlı padişahından almıştır?",
      answer: "fatih sultan mehmet"),
  Question(
      quest:
          "\"Konum, Kuvvet, Uzunluk, Ağırlık\" bunlardan hangisi skaler büyüklüktür?",
      answer: "uzunluk"),
  Question(
      quest:
          "HNO₃ formülüne sahip asidin günlük hayatta kullanılan ismi nedir?",
      answer: "kezzap"),
  Question(
      quest:
          "\"Mandalina, Elma, Ceviz, Patates\" verilen bitkilerden hangisi ağaçta değil yerde yetişir?",
      answer: "patates"),
  Question(quest: "Saf suyun pH değeri kaçtır?", answer: "7"),
  Question(
      quest:
          "Çölyak hastalarına tükettiklerinde rahatsızlık veren madde nedir?",
      answer: "gluten"),
  Question(quest: "4x6/2+(3x5) işleminin sonucu kaçtır?", answer: "27"),
  Question(
      quest:
          "İnsan vücudunda yenilen besinlerin parçalanıp kana karışmasını sağlayan sistem hangisidir?",
      answer: "sindirim sistemi"),
  Question(
      quest:
          "Asit ve baz tepkimeye girdiğinde ortaya su ile birlikte hangi madde çıkar?",
      answer: "tuz"),
  Question(
      quest:
          "\"Ekran Kartı, HDD, RAM, İşlemci\" verilenlerden hangisi bilgisayarın temel depolama birimidir?",
      answer: "hdd"),
  Question(quest: "Taç Mahal hangi ülkededir?", answer: "hindistan"),
  Question(
      quest:
          "1. Dünya Savaşı'nda Osmanlı ve Almanya'nın içinde bulunduğu birliğin ismi nedir?",
      answer: "ittifak devletleri")
];
void question() {
  print(questBank[questNum].quest);
  userAnswer = stdin.readLineSync()?.toLowerCase();
  if (userAnswer == questBank[questNum].answer) {
    score = score + 5;
    print("Doğru cevap!");
  } else
    print("Yanlış cevap. Doğru cevap: ${questBank[questNum].answer}");
}

void main() {
  print(
      "Genel kültür quizine hoşgeldiniz!\nQuiz farklı alanlardan gelecek olan 20 adet sorudan oluşmaktadır.\nHer soru 5 puandır. Tüm soruları bilen yarışmacı 100 puan alır. ");

  for (questNum; questNum < 20; questNum++) {
    question();
  }
  print("Tebrikler quizi bitirdiniz! Puanınız: $score");
}
