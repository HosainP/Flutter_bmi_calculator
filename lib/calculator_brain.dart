import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  int height;
  int weight;

  String getBMIResult() {
    return (weight / pow(height / 100, 2)).toStringAsFixed(1);
  }

  String getHealthCondition() {
    double bmi = (weight / pow(height / 100, 2));
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    double bmi = (weight / pow(height / 100, 2));
    if (bmi >= 25) {
      return 'You have higher than normal body weight. Try to exercise more.';
    } else if (bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
