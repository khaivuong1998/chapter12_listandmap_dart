import 'dart:io';

void main() {
  List<String> nameList = [];
  final NUMERIC = RegExp(r'^-?[0-9]+$');
  print('nhập số lượng phần tử muốn thêm vào');
  String string = stdin.readLineSync() ?? "";
  int number;
  if (string.isEmpty || !NUMERIC.hasMatch(string)) {
    while (true) {
      print('bạn cần nhập số, mời nhập lại');
      string = stdin.readLineSync() ?? "";
      if (NUMERIC.hasMatch(string)) {
        number = int.parse(string);
        break;
      }
    }
  }
  number = int.parse(string);
  for (int i = 0; i < number; i++) {
    print('nhập phần tử thứ ${i + 1}');
    String string = stdin.readLineSync() ?? "";
    nameList.add(string);
  }
  print(nameList);
  // nameList.forEach((element) {
  //   print(element);
  // });
}
