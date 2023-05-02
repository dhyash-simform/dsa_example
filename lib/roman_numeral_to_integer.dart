void main() {
  String input = 'XX';
  int output = 0;

  Map<String, int> romanNumeralToIntegerMap = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000,
  };

  int romanNumeralToInteger(String value) {
    return romanNumeralToIntegerMap.containsKey(value)
        ? romanNumeralToIntegerMap[value]!
        : 0;
  }

  if (input.length == 1) {
    output = romanNumeralToInteger(input);
  } else {
    for (int i = 0; i < input.length; i++) {
      int temp = romanNumeralToInteger(input[i]);
      output += temp;
    }
  }

  output == 0
      ? print('Invalid input')
      : print('Roman to Integer\n$input = $output');
}
