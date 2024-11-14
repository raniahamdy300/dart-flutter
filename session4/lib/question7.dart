// Student Grades Program
// Topic: Functions, Parameters, Return statement
// Exercise: Create a function called calculateGrade that takes a score (0 to 100) as a parameter and returns a letter grade
// (e.g., A, B, C). Then write a main function to call calculateGrade and print the grade for a given score.
import 'dart:io';

void main() {
  stdout.write('Enter your Grade(must be from 0 to 100):');
  double score = double.parse(stdin.readLineSync()!);
  print('your grade = ' + calculateGrade(score));
}

String calculateGrade(double score) {
  if (score >= 0 && score < 65) {
    return 'D';
  } else if (score >= 65 && score < 75) {
    return 'C';
  } else if (score >= 75 && score < 85) {
    return 'B';
  } else if (score >= 85 && score <= 100) {
    return 'A';
  } else {
    return 'number must be from 0 to 100';
  }
}
