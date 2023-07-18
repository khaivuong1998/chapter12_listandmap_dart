import 'dart:ffi';

void main() {
  var colors = ["yellow", "red", "black", "white", "blue"];
  var colors2 = ["green", "pink", "purple", "brown"];
  List list = List.filled(colors.length, "", growable: true);
  for (int i = 0; i < colors.length; i++) {
    list[i] = colors[i];
  }
  print(list);
  List list2 = List.filled(colors2.length, "", growable: true);
  for (int i = 0; i < colors2.length; i++) {
    list2[i] = colors2[i];
  }
  print(list2);
  // for (int i = 0; i < list2.length; i++) {
  //   list.add(list2[i]);
  // }
  list.addAll(list2);
  list2.clear();

  print(list2);
  print(list);
  list.removeRange(4, 7);
  print(list);
  print(list.reversed);
}
