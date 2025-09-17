import 'package:flutter/material.dart';


class ECommercePayment extends StatelessWidget {
  const ECommercePayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: const Color(0xFFFFFFFF),
appBar: AppBar(title: const Text('Payment Details'),
backgroundColor: const Color(0xFFFFFFFF),
elevation: 0),
body: ListView(padding: EdgeInsets.all(16.0),
children: [
Column(children: [
TextField(decoration: InputDecoration(labelText: 'Card Number',
filled: true,
fillColor: const Color(0xFFF3F4F6),
border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
            ))),
SizedBox(height: 16.0),
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Expanded(child: TextField(decoration: InputDecoration(labelText: 'MM/YY',
filled: true,
fillColor: const Color(0xFFF3F4F6),
border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
            )))),
SizedBox(width: 16.0),
Expanded(child: TextField(decoration: InputDecoration(labelText: 'CVC',
filled: true,
fillColor: const Color(0xFFF3F4F6),
border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
            ))))
]),
SizedBox(height: 32.0),
ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF1E3A8A), fixedSize: const Size(double.infinity, 52), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))),
onPressed: () {},
child: Text('Pay \$150.00'))
])
]),
);
  }
}