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

    List sumOfInnerList = computation(lis1: innerList);

    list.add(innerList);
    sumList.add(sumOfInnerList);
  }

  print("Initial Input: $list");
  print("Final Output: $sumList");
}

List computation({required List lis1}) {
  List list2 = [];
  for (int i = 0; i < lis1.length; i++) {
    if (i == 0) {
      list2.add(lis1[i]);
    } else {
      int sum = 0;
      sum = list2[i - 1] + lis1[i];
      list2.add(sum);
    }
  }
  return list2;
}
