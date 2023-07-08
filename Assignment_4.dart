// Question: 1

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  print('Even numbers in the list:');
  for (int number in numbers) {
    if (number % 2 == 0) {
      print(number);
    }
  }
}

/****************************************************************************************************/

// Question: 2

void main() {
  int limit = 10;

  print('Fibonacci sequence up to $limit:');
  
  int first = 0;
  int second = 1;
  int next;

  print(first);
  print(second);

  for (int i = 2; i < limit; i++) {
    next = first + second;
    print(next);

    first = second;
    second = next;
  }
}

/****************************************************************************************************/

// Question: 3

void main() {
  int number = 17;

  if (isPrime(number)) {
    print('$number is a prime number.');
  } else {
    print('$number is not a prime number.');
  }
}

bool isPrime(int number) {
  if (number < 2) {
    return false;
  }

  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

/****************************************************************************************************/

// Question: 4

void main() {
  int number = 5;
  int factorial = 1;

  for (int i = 1; i <= number; i++) {
    factorial *= i;
  }

  print('A Factorial of $number is $factorial');
}

/****************************************************************************************************/

// Question: 5

void main() {
  int i = 1;
  int result = 0;
  print('Calculate the sum of all numbers:');
  while (i <= 5) {
    result += i;
    i++;
  }
  print(result);
}

/****************************************************************************************************/

// Question: 6

void main() {
  List<int> numbers = [3, 9, 1, 6, 4, 2, 8, 5, 7];

  int largest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }

  print('Largest element: $largest');
}

/****************************************************************************************************/

// Question: 7

void main() {
  int num = 5;

  print('Multiplication table of $num:');
  for (int i = 1; i <= 10; i++) {
    int result = number * i;
    print('$num x $i = $result');
  }
}

/****************************************************************************************************/

// Question: 9

void main() {
  String input = "radar";

  bool palindrome = true;
  for (int i = 0; i < input.length / 2; i++) {
    if (input[i] != input[input.length - 1 - i]) {
      palindrome = false;
      break;
    }
  }

  if (palindrome) {
    print('"$input" is a palindrome.');
  } else {
    print('"$input" is not a palindrome.');
  }
}

/****************************************************************************************************/

// Question: 10

void main() {
  int num = 5;

  print('Input no of terms: $num');
  for (int i = 1; i <=num; i++) {
    int cube = i * i * i;
    print('Number is: $i and cube of $i is: $cube');
  }
}

/***************************************************************************************************/

// Question: 11

void main() {
  int rows = 4;

  for (int i = 1; i <= rows; i++) {
    String row = '';
    for (int j = 1; j <= i; j++) {
      row += '*';
    }
    print(row);
  }
}

/***************************************************************************************************/

// Question: 12

void main() {
  int rows = 4;

  for (int i = 1; i <= rows; i++) {
    String row = '';
    for (int j = 1; j <= i; j++) {
      row += j.toString();
    }
    print(row);
  }
}

/***************************************************************************************************/

// Question: 13

void main() {
  int rows = 4;

  for (int i = 1; i <= rows; i++) {
    String row = '';
    for (int j = 1; j <= i; j++) {
      row += i.toString();
    }
    print(row);
  }
}

/***************************************************************************************************/

// Question: 14

void main() {
  int rows = 4;
  int count = 1;

  for (int i = 1; i <= rows; i++) {
    String row = '';
    for (int j = 1; j <= i; j++) {
      row += count.toString() + ' ';
      count++;
    }
    print(row);
  }
}

/****************************************************************************************************/

// Question: 15

void main() {
  int rows = 4;
  int count = 1;

  print('Pattern:');
  for (int i = 1; i <= rows; i++) {
    String row = '';

    for (int j = 1; j <= rows - i; j++) {
      row += ' ';
    }
    for (int k = 1; k <= i; k++) {
      row += count.toString() + ' ';
      count++;
    }
    print(row);
  }
}

/****************************************************************************************************/

// Question: 16

void main() {
  int rows = 4;

  for (int i = 1; i <= rows; i++) {
    String row = '';
    for (int j = 1; j <= rows - i; j++) {
      row += ' ';
    }
    for (int k = 1; k <= i; k++) {
      row += '* ';
    }
    print(row);
  }
}

/***************************************************************************************************/

// Question: 17
import 'dart:io';

void main() {
  String ValidEmail= 'mahii09@gmail.com';
  String ValidPassword = 'abc29';


  String enteredEmail = '';
  String enteredPassword = '';

  while (enteredEmail != ValidEmail || enteredPassword != ValidPassword) {
    print("Enter email: ");
    enteredEmail = stdin.readLineSync()!;

    print("Enter password: ");
    enteredPassword = stdin.readLineSync()!;

    if (enteredEmail == ValidEmail && enteredPassword == ValidPassword) {
      print("User login successful.");
    } else {
      print("Invalid email or password. Please try again.");
    }
  }
}

/***************************************************************************************************/

// Question: 18

import 'dart:io';

void main() {
  List<Map<String, String>> userCredentials = [
    {'email': 'John@email.com', 'password': 'pass101'},
    {'email': 'Emma@email.com', 'password': 'pass102'},
    {'email': 'Ryan@gmail.com', 'password': 'pass103'},
  ];

  bool isLoggedIn = false;
  while (!isLoggedIn) {
    print("Enter your email: ");
    String enteredEmail = stdin.readLineSync()!;

    print("Enter your password: ");
    String enteredPassword = stdin.readLineSync()!;

    for (Map<String, String> credentials in userCredentials) {
      String email = credentials['email']!;
      String password = credentials['password']!;

      if (enteredEmail == email && enteredPassword == password) {
        isLoggedIn = true;
        print('User login successful.');
        break;
      }
    }

    if (!isLoggedIn) {
      print('Invalid email or password. Please try again.');
    }
  }
}

/****************************************************************************************************/

// Question: 19

void main() {
  List<int> numbers = [2, 7, 1, 9, 4, 6, 3, 8];

  print('Numbers greater than 5:');

  for (int number in numbers) {
    if (number > 5) {
      print(number);
    }else{
print(‘$number:  is not greater than 5’);
  }
}
}

/***************************************************************************************************/

// Question: 20

void main() {
  String input = 'Good Morning';
  int vowelCount = 0;

  print('Input string: $input');

  for (int i = 0; i < input.length; i++) {
    if (isVowel(input[i])) {
      vowelCount++;
    }
  }
  print('Number of vowels: $vowelCount');
}

bool isVowel(String L) {
  String Letter = L.toLowerCase();
  return Letter == 'a' ||  Letter == 'e' ||  Letter == 'i' ||  Letter == 'o' || Letter == 'u';
}

/****************************************************************************************************/

// Question: 21

void main() {
  List<int> numbers = [6, 3, 7, 10, 2, 9, 5, 14];
  int max = num [0];
  int min = num [0];

  for (int i = 1; i < num.length; i++) {
    if (num [i] > max) {
      max = num [i];
    }
    if (num [i] < min) {
      min = num [i];
    }
  }

  print('List: $num');
  print('Maximum Number: $max');
  print('Minimum Number: $min');
}

/****************************************************************************************************/

// Question: 22

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int sumOfSquares = 0;

  for (int number in numbers) {
    if (number % 2 != 0) {
      sumOfSquares += number * number;
    }
  }

  print('List: $numbers');
  print('Sum of squares of odd numbers: $sumOfSquares');
}

/****************************************************************************************************/

// Question: 23

void main() {
  List<Map<String, dynamic>> studentDetails = [
    {'name': 'John', 'marks': [80, 75, 90], 'section': 'A', 'rollnumber': 101},
    {'name': 'Emma', 'marks': [95, 92, 88], 'section': 'B', 'rollnumber': 102},
    {'name': 'Ryan', 'marks': [70, 65, 75], 'section': 'A', 'rollnumber': 103},
  ];

  for (Map<String, dynamic> student in studentDetails) {
    String name = student['name'];
    List<int> marks = List<int>.from(student['marks']);
    double average = calculateAverage(marks);
    String grade = calculateGrade(average);

    print('Student Name: $name');
    print('Grade: $grade');
    print('');
  }
}

double calculateAverage(List<int> marks) {
  int sum = 0;
  for (int mark in marks) {
    sum += mark;
  }
  return sum / marks.length;
}

String calculateGrade(double average) {
  if (average >= 90) {
    return 'A';
  } else if (average >= 80) {
    return 'B';
  } else if (average >= 70) {
    return 'C';
  } else if (average >= 60) {
    return 'D';
  } else {
    return 'F';
  }
}

/****************************************************************************************************/

// Question: 24
void main() {
  List<int> nums = [-2, 5, -7, 3, -9, 6, -4];
  int count = 0;
  int sum = 0;

  for (int num in nums) {
    if (num < 0) {
      count++;
      sum += num;
    }
  }

  double average = 0;
  if (count != 0) {
    average = sum / count;
  }

  print('List: $nums');
  print('Average of negative numbers: $average');
}

/****************************************************************************************************/

// Question: 25

void main() {
  List<int> numbers = [4, 7, 10, 13, 16, 19, 22, 25, 28, 31];
  List<int> primeNumbers = [];

  for (int number in numbers) {
    if (isPrime(number)) {
      primeNumbers.add(number);
    }
  }

  print('Original List: $numbers');
  print('Prime Numbers: $primeNumbers');
}

bool isPrime(int number) {
  if (number < 2) {
    return false;
  }

  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}

