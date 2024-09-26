// import 'dart:io';

// void main() {
//   List<String> tasks = [];

//   while (true) {
//     print('\n1. Add a task');
//     print('2. View tasks');
//     print('3. Remove a task');
//     print('4. Exit');
//     stdout.write('Choose an option: ');
//     String? input = stdin.readLineSync();

//     switch (input) {
//       case '1':
//         addTask(tasks);
//         break;
//       case '2':
//         viewTasks(tasks);
//         break;
//       case '3':
//         removeTask(tasks);
//         break;
//       case '4':
//         print('Exiting program. Goodbye!');
//         return;
//       default:
//         print('Invalid option, please try again.');
//     }
//   }
// }

// void addTask(List<String> tasks) {
//   stdout.write('Enter the task: ');
//   String? task = stdin.readLineSync();
//   if (task != null && task.isNotEmpty) {
//     tasks.add(task);
//     print('Task added.');
//   } else {
//     print('Task cannot be empty.');
//   }
// }

// void viewTasks(List<String> tasks) {
//   if (tasks.isEmpty) {
//     print('No tasks in the list.');
//   } else {
//     print('\nTasks:');
//     for (int i = 0; i < tasks.length; i++) {
//       print('${i + 1}. ${tasks[i]}');
//     }
//   }
// }

// void removeTask(List<String> tasks) {
//   if (tasks.isEmpty) {
//     print('No tasks to remove.');
//     return;
//   }
//   stdout.write('Enter the task number to remove: ');
//   String? input = stdin.readLineSync();
//   int? index = int.tryParse(input ?? '');

//   if (index != null && index > 0 && index <= tasks.length) {
//     tasks.removeAt(index - 1);
//     print('Task removed.');
//   } else {
//     print('Invalid task number.');
//   }
// }

// import 'dart:async';

// // Simulate fetching weather data from an API with a 3-second delay.
// Future<String> fetchWeatherData() async {
//   print('Fetching weather data...');
//   await Future.delayed(Duration(seconds: 3)); // Simulate network delay
//   // Simulate a successful response or an error
//   bool isSuccess = true;

//   if (isSuccess) {
//     return 'Weather: Sunny, 25°C';
//     // } else {
//     //   throw Exception('Failed to fetch weather data');
//   }
// }

// void main() async {
//   try {
//     String weather = await fetchWeatherData();
//     print('Weather data fetched successfully: $weather');
//   } catch (e) {
//     print('Error: $e');
//   } finally {
//     print('Fetching process completed.');
//   }
// }






// import 'dart:io';

// void main() {
//   // Prompt the user for their age
//   stdout.write('Please enter your age: ');

//   // Read the user input and trim any extra spaces
//   String? input = stdin.readLineSync()?.trim();

//   // Use null safety and handle invalid input using try-catch
//   try {
//     if (input == null || input.isEmpty) {
//       throw FormatException('No input provided.');
//     }

//     // Try to parse the input to an integer
//     int age = int.parse(input);

//     // Ensure the age is a positive value
//     if (age < 0) {
//       throw FormatException('Age cannot be negative.');
//     }

//     // Calculate how many years are left until the user turns 100
//     int yearsUntil100 = 100 - age;

//     if (yearsUntil100 > 0) {
//       print('You have $yearsUntil100 years left until you turn 100.');
//     } else {
//       print('You are already 100 years old or older!');
//     }
//   } catch (e) {
//     // Handle any exceptions (invalid input, negative numbers, etc.)
//     print('Invalid input: $e');
//   }
// }
