class ProductDetail {
  List<String> images;
  String reviews;
  String createdAt;
  String title;
  String description;
  String oldPrice;
  String price;
  bool deliveryFee;
  String image;
  bool discount;
  int discountQuantity;

  ProductDetail(
      {this.images,
      this.reviews,
      this.createdAt,
      this.title,
      this.description,
      this.oldPrice,
      this.price,
      this.deliveryFee,
      this.image,
      this.discount,
      this.discountQuantity});

  ProductDetail.fromJson(Map<String, dynamic> json) {
    images = json['images'].cast<String>();
    reviews = json['reviews'];
    createdAt = json['createdAt'];
    title = json['title'];
    description = json['description'];
    oldPrice = json['oldPrice'];
    price = json['price'];
    deliveryFee = json['deliveryFee'];
    image = json['image'];
    discount = json['discount'];
    discountQuantity = json['discountQuantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['images'] = this.images;
    data['reviews'] = this.reviews;
    data['createdAt'] = this.createdAt;
    data['title'] = this.title;
    data['description'] = this.description;
    data['oldPrice'] = this.oldPrice;
    data['price'] = this.price;
    data['deliveryFee'] = this.deliveryFee;
    data['image'] = this.image;
    data['discount'] = this.discount;
    data['discountQuantity'] = this.discountQuantity;
    return data;
  }
}