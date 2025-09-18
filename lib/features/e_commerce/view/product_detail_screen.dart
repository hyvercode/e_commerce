import 'package:flutter/material.dart';




class ECommerceProductDetail extends StatelessWidget {
  const ECommerceProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: const Color(0xFFFFFFFF),
appBar: AppBar(backgroundColor: const Color(0xFFFFFFFF),
elevation: 0,
actions: [IconButton(icon: const Icon(Icons.favorite),
color: const Color(0xFF1E3A8A),
onPressed: () {})]),
body: Column(children: [
Expanded(child: SingleChildScrollView(child: Column(children: [
Image.network('https://picsum.photos/400/400?random=1',
height: 300.0),
Padding(padding: EdgeInsets.all(16.0),
child: Column(crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text('Classic Watch',
style: TextStyle(fontSize: 24.0, color: const Color(0xFF1E3A8A), fontWeight: FontWeight.bold)),
SizedBox(height: 8.0),
Text('\$150.00',
style: TextStyle(fontSize: 20.0, color: const Color(0xFF1E3A8A), fontWeight: FontWeight.bold)),
SizedBox(height: 16.0),
Text('A timeless piece that combines classic design with modern functionality. Perfect for any occasion, this watch is a statement of elegance.',
style: TextStyle(color: const Color(0xFF6B7280), height: 1.5))
]))
]))),
Padding(padding: EdgeInsets.all(16.0),
child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF1E3A8A), foregroundColor: const Color(0xFFFFFFFF), fixedSize: const Size(double.infinity, 52), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))),
onPressed: () => Navigator.pushNamed(context, '/e-commerce-cart'),
child: Text('Add to Cart')))
]),
);
  }
}