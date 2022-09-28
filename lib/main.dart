import 'package:app_ecom/pages/home_page.dart';
import 'package:app_ecom/pages/item_page.dart';
import 'package:app_ecom/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Color(0xffceddee)),
      routes: {
        '/': (context) => const LoginPage(),
        'homePage': (context) => const HomePage(),
        'itemPage': (context) => const ItemPage(),
      },
    );
  }
}
