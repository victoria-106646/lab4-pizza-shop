
import 'package:flutter/material.dart';
import 'order.dart';

class OrderSummaryScreen extends StatelessWidget {
  const OrderSummaryScreen({super.key});

  final List<OrderItem> items = const [
    OrderItem(
      name: 'Vegetable Pizza',
      quantity: 2,
      unitPrice: 12.50,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final item = items.first;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Summary'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Item: ${item.name}'),
            const SizedBox(height: 12),
            Text('Quantity: ${item.quantity}'),
            const SizedBox(height: 12),
            Text(
              'Total: RM ${orderTotal(items).toStringAsFixed(2)}',
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
