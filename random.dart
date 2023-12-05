import 'dart:math';

int? generateRandom() {
  int random = Random().nextInt(2) * 100;

  if (random == 0) {
    return null;
  } else {
    return random;
  }
}

void main() {
  int status = generateRandom() ?? 0;
  print(status);
}
