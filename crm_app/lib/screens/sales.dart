import 'package:flutter/material.dart';

class SalesPage extends StatelessWidget {
  const SalesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final sales = [
      {'item': 'Laptop', 'amount': 1200},
      {'item': 'Printer', 'amount': 300},
      {'item': 'Desk', 'amount': 150},
      {'item': 'Monitor', 'amount': 200},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Sales')),
      body: ListView.builder(
        itemCount: sales.length,
        itemBuilder: (context, index) {
          final sale = sales[index];
          return ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: Text(sale['item'] as String),
            trailing: Text('\$${sale['amount']}'),
          );
        },
      ),
    );
  }
}
