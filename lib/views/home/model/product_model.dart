class ProductModel {
  int? id;
  String? name;
  int? productPrice;
  int? productCost;
  int? quantity;
  int? productTypeId;
  String? productImage;
  String? orderDate;
  String? expireDate;

  ProductModel({
    this.id,
    this.name,
    this.productPrice,
    this.productCost,
    this.quantity,
    this.productTypeId,
    this.productImage,
    this.orderDate,
    this.expireDate,
  });

  factory ProductModel.fromJSON(Map<String, dynamic> json) {
    return ProductModel(
      id: json['product_id'] ?? 0,
      name: json['product_name'] ?? '',
      productPrice: json['product_price'] ?? 0,
      productCost: json['product_cost'] ?? 0,
      quantity: json['product_quantity'] ?? 0,
      productTypeId: json['product_type_id'] ?? 0,
      productImage: json['product_image'] ?? '',
      orderDate: json['order_date'] ?? '',
      expireDate: json['expire_date'] ?? '',
    );
  }
}
