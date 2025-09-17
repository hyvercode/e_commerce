import 'package:flutter/material.dart';


class ECommerceCart extends StatefulWidget {
  const ECommerceCart({super.key});

  @override
  State<ECommerceCart> createState() => _ECommerceCartState();
}

class _ECommerceCartState extends State<ECommerceCart> {
  int _navIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: const Color(0xFFF8F9FA),
appBar: AppBar(title: const Text('My Cart'),
backgroundColor: const Color(0xFFFFFFFF),
elevation: 0),
body: Column(children: [
Expanded(child: ListView(padding: EdgeInsets.all(16.0),
children: [
Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
color: const Color(0xFFFFFFFF),
shadowColor: const Color(0xFF6B7280),
child: Padding(padding: EdgeInsets.all(8.0),
child: ListTile(title: const Text('Classic Watch'),
subtitle: const Text('\$150.00'),
tileColor: const Color(0xFFFFFFFF),
textColor: const Color(0xFF1E3A8A),
iconColor: const Color(0xFF1E3A8A),
leading: ClipRRect(borderRadius: BorderRadius.circular(8.0),
child: Image.network('https://picsum.photos/100/100?random=1',
width: 60.0,
height: 60.0)),
trailing: IconButton(icon: const Icon(Icons.delete),
onPressed: () {}))))
])),
Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
elevation: 8,
color: const Color(0xFFFFFFFF),
shadowColor: const Color(0xFF6B7280),
child: Padding(padding: EdgeInsets.all(16.0),
child: Column(children: [
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Text('Total',
style: TextStyle(fontSize: 18.0, color: const Color(0xFF6B7280), fontWeight: FontWeight.bold)),
Text('\$150.00',
style: TextStyle(fontSize: 18.0, color: const Color(0xFF6B7280), fontWeight: FontWeight.bold))
]),
SizedBox(height: 16.0),
ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF1E3A8A), fixedSize: const Size(double.infinity, 52), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))),
onPressed: () {},
child: Text('Proceed to Checkout'))
])))
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