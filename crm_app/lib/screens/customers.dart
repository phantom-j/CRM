import 'package:flutter/material.dart';

class CustomersPage extends StatelessWidget {
  const CustomersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final customers = [
      'Acme Corp',
      'Globex',
      'Soylent Co',
      'Initech',
      'Umbrella Corp',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Customers')),
      body: ListView.builder(
        itemCount: customers.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(customers[index]),
          );
        },
      ),
    );
  }
}
