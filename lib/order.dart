class OrderItem {
  final String name;
  final int quantity;
  final double unitPrice;

  const OrderItem({
    required this.name,
    required this.quantity,
    required this.unitPrice,
  });
}

double orderTotal(List<OrderItem> items) {
  double total = 0;

  for (final item in items) {
    total += item.quantity * item.unitPrice;
  }

  return total;
}