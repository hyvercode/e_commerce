import 'package:flutter/material.dart';




class ECommerceOrderHistory extends StatefulWidget {
  const ECommerceOrderHistory({super.key});

  @override
  State<ECommerceOrderHistory> createState() => _ECommerceOrderHistoryState();
}

class _ECommerceOrderHistoryState extends State<ECommerceOrderHistory> {
  int _navIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: const Color(0xFFF8F9FA),
appBar: AppBar(title: const Text('Orders'),
backgroundColor: const Color(0xFFFFFFFF),
elevation: 0),
body: ListView(padding: EdgeInsets.all(16.0),
children: [
GestureDetector(onTap: () => Navigator.pushNamed(context, '/e-commerce-product-detail'), child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
child: ListTile(title: const Text('Order #12345'),
subtitle: const Text('July 26, 2024 - \$150.00'),
textColor: const Color(0xFF1E3A8A),
tileColor: const Color(0xFFFFFFFF),
iconColor: const Color(0xFF050505),
leading: Chip(label: const Text('Delivered'),
backgroundColor: const Color(0xFF050505))))),
SizedBox(height: 12.0),
Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
child: ListTile(title: const Text('Order #12344'),
subtitle: const Text('July 22, 2024 - \$75.00'),
textColor: const Color(0xFF1E3A8A),
tileColor: const Color(0xFFFFFFFF),
iconColor: const Color(0xFF050505),
leading: Chip(label: const Text('Delivered'),
backgroundColor: const Color(0xFF050505))))
]),
bottomNavigationBar: BottomNavigationBar(
currentIndex: _navIndex,
items: const [
const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
const BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
const BottomNavigationBarItem(icon: Icon(Icons.history), label: 'Orders'),
const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
],
onTap: (index) {
                if (_navIndex == index) return;
                setState(() { _navIndex = index; });
                switch (index) {
                    case 0: Navigator.pushReplacementNamed(context, '/e-commerce-home'); break;
                    case 1: Navigator.pushReplacementNamed(context, '/e-commerce-cart'); break;
                    case 2: Navigator.pushReplacementNamed(context, '/e-commerce-order-history'); break;
                    case 3: Navigator.pushReplacementNamed(context, '/e-commerce-profile'); break;
                }
            },
backgroundColor: const Color(0xFF1E3A8A),
selectedItemColor: const Color(0xFFFFFFFF),
unselectedItemColor: const Color(0xFFF8F9FA),
),
);
  }
}