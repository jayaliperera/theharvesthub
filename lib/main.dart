import 'package:flutter/material.dart';
import 'package:theharvesthub/screens/common%20screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HarvestHub Mobile App',
      theme: ThemeData.light(),
      home: const SplashScreen(),
    );
  }
}
