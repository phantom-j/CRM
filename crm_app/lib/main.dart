import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CRM ERP System',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  static const List<_DashboardItem> _items = [
    _DashboardItem(title: 'Customers', icon: Icons.people, color: Colors.blue),
    _DashboardItem(title: 'Sales', icon: Icons.shopping_cart, color: Colors.green),
    _DashboardItem(title: 'Reports', icon: Icons.bar_chart, color: Colors.orange),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.blue),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('CRM ERP', style: TextStyle(color: Colors.white, fontSize: 24)),
                  SizedBox(height: 4),
                  Text('Menu', style: TextStyle(color: Colors.white70)),
                ],
              ),
            ),
            for (final item in _items)
              ListTile(
                leading: Icon(item.icon, color: item.color),
                title: Text(item.title),
              ),
          ],
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Welcome to CRM ERP System',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(16),
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: [
                for (final item in _items)
                  Card(
                    color: item.color.withOpacity(0.1),
                    child: InkWell(
                      onTap: () {},
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(item.icon, size: 40, color: item.color),
                            const SizedBox(height: 8),
                            Text(item.title),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DashboardItem {
  final String title;
  final IconData icon;
  final Color color;

  const _DashboardItem({required this.title, required this.icon, required this.color});
}
