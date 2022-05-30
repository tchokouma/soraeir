class ProductModel {
  int? productid;
  String? producttitle;
  int? categoryid;
  String? description;
  double? price;
  String? pictureLink;
  double? productWeight;
  int? quantity;

  ProductModel(
      {this.productid,
      this.producttitle,
      this.categoryid,
      this.description,
      this.price,
      this.pictureLink,
      this.productWeight,
      this.quantity});
}
