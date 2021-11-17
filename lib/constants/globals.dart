import 'dart:math';

class MinhasConstantes {
  static const List<String> arcano = [
    "",
    "Louco", // 1
    "Sacerdotisa", // 2
    "Mago", // 3
    "Imperatriz", // 4
    "Imperador", // 5
    "Papa", // 6
    "Enamorado", // 7
    "Carro", // 8
    "Justiça", // 9
    "Eremita", // 10
    "Roda da Fortuna", // 11
    "Força", // 12
    "Dependurado", // 13
    "Diabo", // 14
    "Morte", // 15
    "Temperança", // 16
    "Lua", // 17
    "Torre", // 18
    "Estrela", // 19
    "Sol", // 20
    "Julgamento", // 21
    "Mundo" // 22
  ];

  static int nextNumber({required int min, required int max}) {
    return min + Random().nextInt(max - min + 1);
  }

  static List<int> nextNumbers(int length,
      {required int min, required int max}) {
        
    final numbers = Set<int>();

    while (numbers.length < length) {
      final number = nextNumber(min: min, max: max);
      numbers.add(number);
    }
    return List.of(numbers);
  }
}
