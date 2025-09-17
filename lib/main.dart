import 'package:flutter/material.dart';
import 'theme.dart';
import 'screens/e_commerce_splash.dart';
import 'screens/e_commerce_login.dart';
import 'screens/e_commerce_register.dart';
import 'screens/e_commerce_home.dart';
import 'screens/e_commerce_product_detail.dart';
import 'screens/e_commerce_cart.dart';
import 'screens/e_commerce_shipment.dart';
import 'screens/e_commerce_payment.dart';
import 'screens/e_commerce_order_history.dart';
import 'screens/e_commerce_profile.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce',
      theme: appTheme,
      initialRoute: '/e-commerce-login',
      routes: {
        '/e-commerce-splash': (context) => const ECommerceSplash(),
        '/e-commerce-login': (context) => const ECommerceLogin(),
        '/e-commerce-register': (context) => const ECommerceRegister(),
        '/e-commerce-home': (context) => const ECommerceHome(),
        '/e-commerce-product-detail': (context) => const ECommerceProductDetail(),
        '/e-commerce-cart': (context) => const ECommerceCart(),
        '/e-commerce-shipment': (context) => const ECommerceShipment(),
        '/e-commerce-payment': (context) => const ECommercePayment(),
        '/e-commerce-order-history': (context) => const ECommerceOrderHistory(),
        '/e-commerce-profile': (context) => const ECommerceProfile(),
      },
    );
  }
}