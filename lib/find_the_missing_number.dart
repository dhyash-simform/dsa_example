import 'dart:io';

void main() {
  stdout.write("Enter number of inputs: ");

  int n = int.parse(stdin.readLineSync() ?? '');

  int findTheMissingNumber(List<int> list, int length) {
    for (int i = 1; i <= length; i++) {
      if (!list.contains(i) && list.length != length) {
        list.add(i);
        return i;
      }
    }
    return -1;
  }

  for (int i = 0; i < n; i++) {
    stdout.write("Enter list length: ");

    int length = int.parse(stdin.readLineSync() ?? '');

    List<int> inputList = [];

    for (int i = 0; i < (length - 1); i++) {
      stdout.write("Enter for $i: ");
      int input = int.parse(stdin.readLineSync() ?? '');
      inputList.add(input);
    }

    int num = findTheMissingNumber(inputList, length);
    if (num != -1) {
      print('Missing value is $num.');
    }

    print(inputList);
  }
}
