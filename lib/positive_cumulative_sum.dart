import 'dart:io';

void main() {
  stdout.write("Enter number of inputs: ");
  int input = int.parse(stdin.readLineSync()!);

  List list = [];
  List sumList = [];

  for (int i = 0; i < input; i++) {
    List<int> innerList = [];

    stdout.write("Enter number of inputs in List ${i + 1}: ");
    int input2 = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < input2; i++) {
      int input2 = int.parse(stdin.readLineSync()!);
      innerList.add(input2);
    }

    List sumOfInnerList = computation(inputList: innerList);

    list.add(innerList);
    sumList.add(sumOfInnerList);
  }

  print("Initial Input: $list");
  print("Final Output: $sumList");
}

List computation({required List inputList}) {
  List calculatedList = [];
  List tempList = [];
  for (int i = 0; i < inputList.length; i++) {
    if (i == 0) {
      calculatedList.add(inputList[i]);
    } else {
      int sum = 0;
      sum = calculatedList[i - 1] + inputList[i];
      calculatedList.add(sum);
    }
  }
  for (int i in calculatedList) {
    if (i > 0) {
      tempList.add(i);
    }
  }
  return tempList;
}
