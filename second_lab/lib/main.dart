import 'dart:io';

void main() {
  print("Part 1:");
  int value = 5;
  if (value % 2 == 0) {
    print("Even");
  } else {
    print("Odd");
  }

  print("Part 2:");
  String character = 'P'.toLowerCase();
  const vowels = ['a', 'e', 'i', 'o', 'u'];
  if (character.contains(RegExp(r'^[a-z]$'))) {
    if (vowels.contains(character)) {
      print("Vowel");
    } else {
      print("Consonant");
    }
  } else {
    print("Not a valid letter");
  }

  print("Part 3:");
  if (value > 0) {
    print("Positive");
  } else if (value < 0) {
    print("Negative");
  } else {
    print("Zero");
  }

  print("Part 4:");
  for (int i = 1; i <= 100; i++) {
    print("$i Alina");
  }

  print("Part 5:");
  List<int> numbers = [5, 2, -2, 8, 2];
  int sum = 0;
  for (var num in numbers) {
    if (num > 0) {
      sum += num;
    }
  }
  print("Sum: $sum");

  print("Part 6:");
  for (int i = 1; i <= 10; i++) {
    print("5 * $i = ${5 * i}");
  }

  print("Part 7:");
  for (int i = 1; i <= 9; i++) {
    print("Table $i:");
    for (int j = 1; j <= 10; j++) {
      print("$i * $j = ${i * j}");
    }
    print("");
  }

  print("Part 8:");
  stdout.write("Enter first number: ");
  double num1 = getNumber();

  stdout.write("Enter operation (+, -, *, /): ");
  String op = getOperator();

  stdout.write("Enter second number: ");
  double num2 = getNumber();

  double result = calculate(num1, num2, op);
  print("Result: $num1 $op $num2 = $result");

  print("\nPart 9:");
  for (int i = 1; i <= 100; i++) {
    if (i == 41) continue;
    print(i);
  }
}

double getNumber() {
  while (true) {
    try {
      return double.parse(stdin.readLineSync()!);
    } catch (e) {
      print("Error! Enter a valid number:");
    }
  }
}

String getOperator() {
  List<String> operators = ['+', '-', '*', '/'];
  while (true) {
    stdout.write("Enter operator (+, -, *, /): ");
    String? op = stdin.readLineSync();
    if (operators.contains(op)) {
      return op!;
    }
    print("Error! Enter a valid operator.");
  }
}

double calculate(double num1, double num2, String op) {
  if (op == '+') return num1 + num2;
  if (op == '-') return num1 - num2;
  if (op == '*') return num1 * num2;
  if (op == '/') {
    if (num2 == 0) {
      print("Error! Cannot divide by zero.");
      return double.nan;
    }
    return num1 / num2;
  }
  print("Error: unknown operator");
  return double.nan;
}
