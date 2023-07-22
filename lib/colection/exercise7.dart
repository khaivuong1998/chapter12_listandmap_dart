void main() {
  Map<String, String> map = Map();
  map['name'] = 'hùng';
  map['phone'] = '324751930';
  map.forEach((key, value) {
    if (value.length == 4) {
      print('${key}: ${value}');
    }
  });
  // print(map.entries.where((element) => element.value.length == 4));
}
