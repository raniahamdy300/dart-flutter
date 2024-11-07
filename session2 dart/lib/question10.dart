// Null Safety with a Default Value
// Objective: Practice using nullable variables with default values.
// Instructions:
// - Create a nullable integer variable score but do not assign it a value.
// - Print score if it has a value, otherwise print 'No score'.
// - Try assigning a value to score and run the code again to see the change.

void main() {
  int? score;

  //score = score ?? 20;
  score != null ? print(score) : print('No score');

  score = 50;
  print(score);
}
