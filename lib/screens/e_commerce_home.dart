import 'package:flutter/material.dart';


class ECommerceHome extends StatefulWidget {
  const ECommerceHome({super.key});

  @override
  State<ECommerceHome> createState() => _ECommerceHomeState();
}

class _ECommerceHomeState extends State<ECommerceHome> {
  int _navIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: const Color(0xFFF8F9FA),
appBar: AppBar(title: const Text('Catalog'),
backgroundColor: const Color(0xFFFFFFFF),
elevation: 0,
actions: [IconButton(icon: const Icon(Icons.notifications),
onPressed: () {})]),
body: ListView(padding: EdgeInsets.all(16.0),
children: [
Column(crossAxisAlignment: CrossAxisAlignment.start,
children: [
Container(decoration: BoxDecoration(color: const Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(12.0)),
padding: EdgeInsets.all(8.0),
child: Row(crossAxisAlignment: CrossAxisAlignment.center,
children: [
Icon(Icons.search,
color: const Color(0xFF6B7280)),
SizedBox(width: 8.0),
Text('Search products...',
style: TextStyle(color: const Color(0xFF6B7280)))
])),
SizedBox(height: 24.0),
Wrap(spacing: 16.0,
runSpacing: 16.0,
children: [
GestureDetector(onTap: () => Navigator.pushNamed(context, '/e-commerce-product-detail'), child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
child: Padding(padding: EdgeInsets.all(0.0),
child: Column(children: [
ClipRRect(borderRadius: BorderRadius.circular(12.0),
child: Image.network('https://picsum.photos/300/300?random=1',
height: 150.0)),
Padding(padding: EdgeInsets.all(12.0),
child: Column(crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text('Classic Watch',
style: TextStyle(color: const Color(0xFF6B7280), fontWeight: FontWeight.bold)),
Text('\$150.00',
style: TextStyle(color: const Color(0xFF6B7280)))
]))
])))),
GestureDetector(onTap: () => Navigator.pushNamed(context, '/e-commerce-product-detail'), child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
child: Padding(padding: EdgeInsets.all(0.0),
child: Column(children: [
ClipRRect(borderRadius: BorderRadius.circular(12.0),
child: Image.network('https://picsum.photos/300/300?random=2',
height: 150.0)),
Padding(padding: EdgeInsets.all(12.0),
child: Column(crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text('Leather Wallet',
style: TextStyle(color: const Color(0xFF6B7280), fontWeight: FontWeight.bold)),
Text('\$75.00',
style: TextStyle(color: const Color(0xFF6B7280)))
]))
]))))
])
])
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