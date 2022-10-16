class ShopModel {
  List<Categories>? categories;

  ShopModel({this.categories});

  ShopModel.fromJson(Map<String, dynamic> json) {
    categories = (json['categories'] as List)
        .map((category) => Categories.fromJson(category))
        .toList();
  }
}

class Categories {
  int? categoryId;
  String? name;
  String? color;
  List<Data>? data;

  Categories(
      {required this.categoryId,
      required this.name,
      required this.color,
      required this.data});

  Categories.fromJson(Map<String, dynamic> json) {
    categoryId = json['categoryId'];
    name = json['name'];
    color = json['color'];
    data = (json['data'] as List).map((e) => Data.fromJson(e)).toList();
  }
}

class Data {
  // int? id;
  String? name;
  int? price;
  String? color;
  // bool? fav;

  Data(
      {
      required this.name,
      required this.price,
      required this.color,
     });

  Data.fromJson(Map<String, dynamic> json) {
    // id = json['id'];
    name = json['name'];
    price = json['price'];
    color = json['color'];
  }
}
