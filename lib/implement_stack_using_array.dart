void main() {
  Stack stack = Stack(10);

  print("${stack.top()} ${stack.isEmpty()} ${stack.size()}");

  stack.push(5);

  print("${stack.top()} ${stack.isEmpty()} ${stack.size()}");

  stack.push(6);

  print("${stack.top()} ${stack.isEmpty()} ${stack.size()}");

  stack.push(7);

  print("${stack.top()} ${stack.isEmpty()} ${stack.size()}");

  stack.pop();

  print("${stack.top()} ${stack.isEmpty()} ${stack.size()}");

  stack.pop();

  print("${stack.top()} ${stack.isEmpty()} ${stack.size()}");

  stack.pop();

  print("${stack.top()} ${stack.isEmpty()} ${stack.size()}");
}

// Implement the Stack class
class Stack {
  late final List list;

  Stack(int capacity) {
    list = List.filled(capacity, null, growable: false);
  }

  bool isEmpty() => list.every((element) => element == null);

  int size() => list.where((element) => element != null).length;

  int top() {
    late int containElements;
    containElements = list.where((element) => element != null).length;
    return containElements == 0 ? -1 : list[containElements - 1];
  }

  void push(int element) {
    late int containElements;
    containElements = list.where((element) => element != null).length;
    list[containElements] = element;
  }

  void pop() {
    late int containElements;
    containElements = list.where((element) => element != null).length;
    list[containElements - 1] = null;
  }
}
