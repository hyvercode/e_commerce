import 'package:flutter/material.dart';


class ECommerceSplash extends StatelessWidget {
  const ECommerceSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
backgroundColor: const Color(0xFF1E3A8A),
body: const Center(child: const Column(mainAxisAlignment: MainAxisAlignment.center,
children: const [
const Center(child: const Icon(Icons.shopping_bag,
size: 100.0,
color: const Color(0xFFFFFFFF)))
])),
);
  }
}