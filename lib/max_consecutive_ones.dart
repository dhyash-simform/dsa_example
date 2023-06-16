void main() {
  // List<int> input = [1, 1, 3, 2, 3, 1, 1, 1];
  List<int> input = [1, 1, 2, 2];

  int oneCount = 0;

  for (int i = 0; i < input.length; i++) {
    int count = 0;
    for (int j = i; j < input.length; j++) {
      if (input[j] == 1) {
        count++;
      } else {
        break;
      }
    }
    if (count > oneCount) {
      oneCount = count;
    }
  }

  print(oneCount);
}
