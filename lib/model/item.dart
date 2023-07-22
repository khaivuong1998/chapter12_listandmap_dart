class Item{
  String? name;
  int? price;

  Item();

  Item.constructor(this.name, this.price);

  @override
  String toString() {
    return 'Item{name: $name, price: $price}';
  }
}