import 'dart:io';

void main() {
  stdout.write('Enter number of test cases: ');

  int n = int.parse(stdin.readLineSync() ?? '');

  for (int i = 0; i < n; i++) {
    List<int> currentList = [];
    List<List<int>> twinsIndex = [];
    List<List<int>> twinsList = [];

    stdout.write('Enter list length for $i test case: ');
    int listLength = int.parse(stdin.readLineSync() ?? '');

    for (int input = 0; input < listLength; input++) {
      stdout.write('Enter at index $input: ');
      int value = int.parse(stdin.readLineSync() ?? '');
      currentList.add(value);
    }

    int currentListLength = currentList.length;

    for (int i = 0; i < currentListLength; i++) {
      int temp1 = currentList[i];
      for (int j = i + 1; j < currentListLength; j++) {
        if (temp1 == currentList[j]) {
          twinsIndex.add([i, j]);
          twinsList.add([temp1, currentList[j]]);
        }
      }
    }

    print(twinsList);
    print(twinsIndex);
  }
}
