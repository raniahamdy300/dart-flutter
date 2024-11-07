// Nested If for Temperature Ranges
// Objective: Use nested if statements to check multiple conditions.
// Instructions:
// - Create an integer variable temperature.
// - If temperature is above 30, print 'It's hot!'.
// - If it's between 15 and 30, print 'It's warm.'.
// - Otherwise, print 'It's cold.'.

void main() {
  int tempreture = 10;

  if (tempreture > 30) {
    print('It\'s hot!');
  } else if (tempreture >= 15 && tempreture <= 30) {
    print('It\'s warm.');
  } else {
    print('It\'s cold.');
  }
}
