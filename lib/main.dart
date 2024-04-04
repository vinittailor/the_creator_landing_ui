import 'package:creator_landing_page/screens/landing_page.dart';
import 'package:creator_landing_page/utils/colors.dart';
import 'package:creator_landing_page/utils/constant.dart';
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
      title: websiteName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "kulimPark",
        colorScheme: ColorScheme.fromSeed(seedColor: colorCustom),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LandingPage(),
        // You can add more routes here for other pages
        // Example: '/about': (context) => AboutPage(),
      },
    );
  }
}

