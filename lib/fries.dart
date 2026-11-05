
import 'package:flutter/material.dart';

class FriesScreen extends StatelessWidget {
  const FriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Box of Fries'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/fries.jpg',
              height: 250,
              width: 250,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            const Text(
              'Crispy golden fries served with our special sauce.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
