import '../model/item.dart';
import 'dart:io';

void main() {
  List<Item> list = [];
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
  for (int i = 0; i < number; i++) {
    Item item;
    print('nhập tên mặt hàng');
    String name = stdin.readLineSync() ?? "";
    print('nhập giá tiền');
    int price = int.parse(stdin.readLineSync() ?? "");
    item = Item.constructor(name, price);
    list.add(item);
  }
  int sum = 0;
  for (int i = 0; i < list.length; i++) {
    sum += list[i].price!;
  }
  print('${list}, total: ${sum}');
}
