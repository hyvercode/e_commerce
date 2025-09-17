import 'package:flutter/material.dart';



class ECommerceLogin extends StatelessWidget {
  const ECommerceLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: const Color(0xFFFFFFFF),
body: Padding(padding: EdgeInsets.all(24.0),
child: Column(mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.start,
children: [
SizedBox(height: 48.0),
Text('Welcome Back!',
style: TextStyle(fontSize: 32.0, color: const Color(0xFF1E3A8A), fontWeight: FontWeight.bold)),
Text('Sign in to your account to continue.',
style: TextStyle(color: const Color(0xFF6B7280))),
SizedBox(height: 40.0),
TextField(decoration: InputDecoration(hintText: 'Email Address',
filled: true,
fillColor: const Color(0xFFF3F4F6),
border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
            ),
focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
            )),
style: const TextStyle(color: const Color(0xFF1E3A8A))),
SizedBox(height: 16.0),
TextField(decoration: InputDecoration(hintText: 'Password',
filled: true,
fillColor: const Color(0xFFF3F4F6),
border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
            ),
focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
            )),
obscureText: true,
style: const TextStyle(color: const Color(0xFF1E3A8A))),
SizedBox(height: 32.0),
ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF1E3A8A), fixedSize: const Size(double.infinity, 52), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))),
onPressed: () => Navigator.pushNamed(context, '/e-commerce-home'),
child: Text('Sign In')),
SizedBox(height: 24.0),
Row(mainAxisAlignment: MainAxisAlignment.center,
children: [
Text('Don\'t have an account? ',
style: TextStyle(color: const Color(0xFF050505))),
Text('Sign Up',
style: TextStyle(color: const Color(0xFF1E3A8A), fontWeight: FontWeight.bold))
])
])),
);
  }
}