const Map<String, int> characterValues = {
  'A': 1,
  'B': 2,
  'C': 3,
  'D': 4,
  'E': 5,
  'F': 6,
  'G': 7,
  'H': 8,
  'I': 9,
  'J': 10,
  'K': 11,
  'L': 12,
  'M': 13,
  'N': 14,
  'O': 15,
  'P': 16,
  'Q': 17,
  'R': 18,
  'S': 19,
  'T': 20,
  'U': 21,
  'V': 22,
  'W': 23,
  'X': 24,
  'Y': 25,
  'Z': 26,
};

void main() {
  String columnName = 'ABCA';
  int column = 0;

  int length = columnName.length;

  int getValue(String character) {
    return characterValues[character] ?? -1;
  }

  column = getValue(columnName[0]);
  if (length > 1) {
    for (int i = 1; i < length; i++) {
      column = (column * 26) + getValue(columnName[i]);
    }
  }

  print('Column in Int is: $column');
}
