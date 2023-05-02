void main() {
  List<String> inputsList = [
    'i am solving this problem',
    'good evening everyone',
    'hello'
  ];
  List outputsList = [];

  for (int i = 0; i < inputsList.length; i++) {
    List stringToList = inputsList[i].split(' ');
    String output = '';
    for (int j = stringToList.length - 1; j >= 0; j--) {
      output = '$output ${stringToList[j]}';
    }

    outputsList.add(output.trim());
  }

  print(outputsList);
}
