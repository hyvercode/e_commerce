import 'package:flutter/material.dart';
import 'features/e_commerce/view/splash_screen.dart';
import 'features/e_commerce/view/login_screen.dart';
import 'features/e_commerce/view/register_screen.dart';
import 'features/e_commerce/view/home_screen.dart';
import 'features/e_commerce/view/product_detail_screen.dart';
import 'features/e_commerce/view/cart_screen.dart';
import 'features/e_commerce/view/shipment_screen.dart';
import 'features/e_commerce/view/payment_screen.dart';
import 'features/e_commerce/view/order_history_screen.dart';
import 'features/e_commerce/view/profile_screen.dart';

class AppRoutes {
  static const String initialRoute = '/e-commerce-home';

  static Map<String, WidgetBuilder> get routes => {
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
      };
}