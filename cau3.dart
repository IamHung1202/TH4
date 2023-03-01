import 'dart:io';

void main() {
  // Create an empty list to store the expenses
  List<double> expenses = [];

  // Read expenses from the user until they enter an empty string
  while (true) {
    stdout.write("Enter an expense amount (or leave empty to finish): ");
    String input = stdin.readLineSync()!;

    if (input.isEmpty) {
      break;
    }

    double expense = double.tryParse(input)!;

    if (expense == null) {
      print("Invalid input, please enter a number.");
    } else {
      expenses.add(expense);
    }
  }

  // Calculate the total of the expenses
  double total = expenses.fold(0, (acc, expense) => acc + expense);

  // Print the total
  print("Total expenses: \$${total.toStringAsFixed(2)}");
}
