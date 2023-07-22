import '../model/item.dart';
import 'dart:io';

void main() {
  Map<Item, String> map = Map();
  final NUMERIC = RegExp(r'^-?[0-9]+$');
  print('nhập số lượng mặt hàng bán trong ngày');
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
  for (int i = 0; i < number; i++) {}
}
