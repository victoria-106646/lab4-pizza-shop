
import 'package:flutter/material.dart';

class VegetablePizzaScreen extends StatelessWidget {
  const VegetablePizzaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vegetable Pizza'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/vegetable_pizza.jpg',
              height: 250,
              width: 250,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            const Text(
              'A delicious pizza topped with fresh vegetables.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
