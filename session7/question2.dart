// 2. Lists, Maps, and Conditional Statements
// Write a program that:
// - Takes a list of student scores:
// ```dart
// List<int> scores = [85, 72, 90, 66, 78];
// ```
// - Maps the scores to grades using the following criteria:
// - 90+ = "A"
// - 80-89 = "B"
// - 70-79 = "C"
// - Below 70 = "D"
// - Stores the results in a `Map<int, String>` where the key is the score, and the value is the grade.
// - Prints the scores and their corresponding grades.
import 'dart:io';

void main() {
  List<int> scores = [];
  Map<int, String> gradesWithScores = {};
  for (var i = 0; i < 5; i++) {
    print('Enter student scores: ');
    int s = int.parse(stdin.readLineSync()!);
    scores.add(s);
  }
  for (var i = 0; i < scores.length; i++) {
    if (scores[i] >= 90) {
      gradesWithScores[scores[i]] = 'A';
    } else if (scores[i] >= 80 && scores[i] <= 89) {
      gradesWithScores[scores[i]] = 'B';
    } else if (scores[i] >= 70 && scores[i] <= 79) {
      gradesWithScores[scores[i]] = 'C';
    } else {
      gradesWithScores[scores[i]] = 'D';
    }
  }
  print(' $gradesWithScores');
}
