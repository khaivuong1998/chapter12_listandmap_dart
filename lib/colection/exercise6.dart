import 'dart:io';

void main() {
  Map<String, String> map = Map();
  map['country'] = "việt nam";
  map['name'] = 'thanh minh';
  map['address'] = 'hà nội';
  map['age'] = '25';
  print('nhập quốc gia muốn thay đổi');
  String string = stdin.readLineSync() ?? "";
  map.update("country", (value) => string);
  map.forEach((key, value) {
    print('${key}: ${value}');
  });
}
