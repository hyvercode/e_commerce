import 'package:flutter/material.dart';



class ECommerceProfile extends StatefulWidget {
  const ECommerceProfile({super.key});

  @override
  State<ECommerceProfile> createState() => _ECommerceProfileState();
}

class _ECommerceProfileState extends State<ECommerceProfile> {
  int _navIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: const Color(0xFFF8F9FA),
appBar: AppBar(title: const Text('My Profile'),
backgroundColor: const Color(0xFFFFFFFF),
elevation: 0),
body: ListView(padding: EdgeInsets.all(16.0),
children: [
Column(crossAxisAlignment: CrossAxisAlignment.center,
children: [
SizedBox(height: 20.0),
Icon(Icons.account_circle,
size: 100.0,
color: const Color(0xFFD1D5DB)),
SizedBox(height: 16.0),
Text('Jane Doe',
style: TextStyle(fontSize: 24.0, color: const Color(0xFF1E3A8A), fontWeight: FontWeight.bold)),
Text('jane.doe@example.com',
style: TextStyle(color: const Color(0xFF6B7280))),
SizedBox(height: 32.0),
Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
child: Padding(padding: EdgeInsets.all(0.0),
child: Column(children: [
ListTile(title: const Text('My Orders'),
onTap: () {},
textColor: const Color(0xFF6B7280),
tileColor: const Color(0xFFFFFFFF),
iconColor: const Color(0xFF050505),
leading: Icon(Icons.history)),
Divider(indent: 16.0,
endIndent: 16.0),
ListTile(title: const Text('Settings'),
textColor: const Color(0xFF6B7280),
tileColor: const Color(0xFFFFFFFF),
iconColor: const Color(0xFF050505),
leading: Icon(Icons.settings))
]))),
SizedBox(height: 24.0),
ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFFEE2E2), foregroundColor: const Color(0xFFDC2626)),
onPressed: () => Navigator.pushNamed(context, '/e-commerce-login'),
child: Text('Logout'))
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