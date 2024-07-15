class CartModel {
  int? id;
  String? name;
  int? price;
  String? img;
  String? time;
  int? quantity;
  bool? isExist;

  CartModel({this.id,
    this.name,
    this.price,
    this.img,
    this.quantity,
    this.time,
    this.isExist});

  CartModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    img = json['img'];
    time = json['time'];
    isExist = json['isExist'];
    quantity = json['quantity'];
  }

}