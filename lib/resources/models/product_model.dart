class Product {
  String id;
  String createdAt;
  String title;
  String description;
  String price;
  bool deliveryFee;
  String image;
  bool discount;
  int discountQuantity;

  Product(
      {this.id,
      this.createdAt,
      this.title,
      this.description,
      this.price,
      this.deliveryFee,
      this.image,
      this.discount,
      this.discountQuantity});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt'];
    title = json['title'];
    description = json['description'];
    price = json['price'];
    deliveryFee = json['deliveryFee'];
    image = json['image'];
    discount = json['discount'];
    discountQuantity = json['discountQuantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['createdAt'] = this.createdAt;
    data['title'] = this.title;
    data['description'] = this.description;
    data['price'] = this.price;
    data['deliveryFee'] = this.deliveryFee;
    data['image'] = this.image;
    data['discount'] = this.discount;
    data['discountQuantity'] = this.discountQuantity;
    return data;
  }
}