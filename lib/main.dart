import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:theharvesthub/firebase_options.dart';
import 'package:theharvesthub/screens/common%20screens/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
