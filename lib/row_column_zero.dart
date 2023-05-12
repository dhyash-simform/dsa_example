/// 1 1 1        1 0 1
/// 1 0 1   =>   0 0 0
/// 1 1 1        1 0 1

/// 0 1 0        0 0 0
/// 3 4 5   =>   0 4 0
/// 1 2 3        0 2 0

// List<List<int>> matrix1 = [
//   [1, 1, 1],
//   [1, 0, 1],
//   [1, 1, 1],
// ];
//
// List<List<int>> matrix2 = [
//   [0, 1, 0],
//   [3, 4, 5],
//   [1, 2, 3],
// ];

void main() {
  int row;
  int column;

  List<List<int>> orgMatrix = [
    [0, 1, 0],
    [3, 4, 5],
    [1, 2, 3],
  ];

  List<List<int>> matrix = [
    [0, 1, 0],
    [3, 4, 5],
    [1, 2, 3],
  ];

  (row, column) = matrixIsZero(orgMatrix);
  // print("Row: $row, Column: $column");

  do {
    orgMatrix[row][column] = -1;
    for (int i = 0; i < matrix.length; i++) {
      for (int j = 0; j < matrix.length; j++) {
        if (i == row || j == column) {
          matrix[row][j] = 0;
          matrix[i][column] = 0;
        }
      }
    }
    // print(matrix);
    (row, column) = matrixIsZero(orgMatrix);
    // print("Row: $row, Column: $column");
  } while (row != -1 && column != -1);

  print(matrix);
}

/// making row zero
(int, int) matrixIsZero(List<List<int>> matrix) {
  for (int i = 0; i < matrix.length; i++) {
    for (int j = 0; j < matrix.length; j++) {
      if (matrix[i][j] == 0) {
        return (i, j);
      }
    }
  }
  return (-1, -1);
}
