void main() {
  List<String> list = [];
  list.add("hoàng");
  list.add("an");
  list.add("ngọc");
  list.add("tâm");
  list.add("khoa");
  list.add("đại");
  list.add("ánh");
  var element1 = list.where((element) => element.contains("a"));
  print(element1);
}
