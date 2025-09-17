import 'package:flutter/material.dart';



class ECommerceShipment extends StatelessWidget {
  const ECommerceShipment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: const Color(0xFFFFFFFF),
appBar: AppBar(title: const Text('Shipping Address'),
backgroundColor: const Color(0xFFFFFFFF),
elevation: 0),
body: ListView(padding: EdgeInsets.all(16.0),
children: [
Column(children: [
TextField(decoration: InputDecoration(labelText: 'Full Name',
filled: true,
fillColor: const Color(0xFFF3F4F6),
border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
            ))),
SizedBox(height: 16.0),
TextField(decoration: InputDecoration(labelText: 'Address Line 1',
filled: true,
fillColor: const Color(0xFFF3F4F6),
border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
            ))),
SizedBox(height: 16.0),
TextField(decoration: InputDecoration(labelText: 'City',
filled: true,
fillColor: const Color(0xFFF3F4F6),
border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
            ))),
SizedBox(height: 16.0),
TextField(decoration: InputDecoration(labelText: 'ZIP Code',
filled: true,
fillColor: const Color(0xFFF3F4F6),
border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
            ))),
SizedBox(height: 32.0),
ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF1E3A8A), fixedSize: const Size(double.infinity, 52), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))),
onPressed: () => Navigator.pushNamed(context, '/e-commerce-payment'),
child: Text('Continue to Payment'))
])
]),
);
  }
}