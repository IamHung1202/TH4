import 'dart:io';

void main() {
  // create an empty list to store tasks
  List<String> tasks = [];

  while (true) {
    // display the menu options
    print("\nMenu:");
    print("1. Add a task");
    print("2. Remove a task");
    print("3. View all tasks");
    print("4. Exit");

    // get the user's choice
    stdout.write("Enter your choice: ");
    String choice = stdin.readLineSync()!;

    // process the user's choice
    if (choice == "1") {
      // add a task
      stdout.write("Enter a new task: ");
      String task = stdin.readLineSync()!;
      tasks.add(task);
      print("Task added successfully!");
    } else if (choice == "2") {
      // remove a task
      stdout.write("Enter the task to remove: ");
      String task = stdin.readLineSync()!;
      if (tasks.contains(task)) {
        tasks.remove(task);
        print("Task removed successfully!");
      } else {
        print("Task not found.");
      }
    } else if (choice == "3") {
      // view all tasks
      print("Tasks:");
      if (tasks.isNotEmpty) {
        for (String task in tasks) {
          print("- $task");
        }
      } else {
        print("No tasks found.");
      }
    } else if (choice == "4") {
      // exit the program
      break;
    } else {
      // invalid choice
      print("Invalid choice. Please try again.");
    }
  }
}