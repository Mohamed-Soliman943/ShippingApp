
class OrderElement {
  final int id;
  final double total;
  final double discountedTotal;
  final int totalProducts;
  final int totalQuantity;
  OrderElement({required this.id, required this.total, required this.discountedTotal, required this.totalProducts, required this.totalQuantity});

  factory OrderElement.fromJson(json) {
    return OrderElement(
        discountedTotal: json['discountedTotal'],
        totalProducts: json['totalProducts'],
        totalQuantity: json['totalQuantity'],
        id: json['id'],
        total: json['total']);
  }

}