/// list: 1 → 2 → 3 → 4 → 5 → 6 → 7 → 8 → 9
/// Result: 1 → 9 → 2 → 8 → 3 → 7 → 4 → 6 → 5

void main() {
  List<int> intList = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List<int> finalList = [];

  for (int i = 1; i <= (intList.length / 2).ceil(); i++) {
    finalList.add(intList[i - 1]);
    if (i != (intList.length / 2).ceil()) {
      finalList.add(intList[intList.length - i]);
    }
  }
  print(finalList);
}
