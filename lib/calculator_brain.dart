import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  double _bmi = 0.0;
  double calculateBMI() {
    print("1");
    _bmi = weight / pow(height / 100, 2);
    return _bmi;
  }

  String getResult() {
    print('get result' + '*' * 100);
    print(_bmi);
    print('2');
    if (_bmi > 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else
      return "Underweigth";
  }

  String getInterpretation() {
    print("3");
    if (_bmi > 25) {
      return "You have higher than normal body weight. Try to exercise more.";
    } else if (_bmi > 18.5) {
      return "You have a normal body weight. Good job.";
    } else
      return "You have a lower than normal body weight. You can eat a bit more.";
  }
}
