import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theharvesthub/firebase_options.dart';
<<<<<<< HEAD
import 'package:theharvesthub/screens/cart_screen/cart_provider.dart';
import 'package:theharvesthub/splash_screen.dart';
=======
import 'package:theharvesthub/providers/auth_provider.dart';
import 'package:theharvesthub/providers/cart_provider.dart';
import 'package:theharvesthub/providers/signin_provider.dart';
import 'package:theharvesthub/providers/signup_provider.dart';
import 'package:theharvesthub/screens/splash_screen/splash_screen.dart';
>>>>>>> 683b9c2b73f831ada9936b25e28e8b18ad7c50da

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
<<<<<<< HEAD
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CartProvider()),
          // Add other providers here if needed (e.g., BannerProvider)
        ],
        child: const MyApp(),
      ),
    );
  } catch (e) {
    // Handle initialization failure with a basic error app
    runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error, color: Colors.red, size: 48),
                const SizedBox(height: 16),
                Text(
                  'Failed to initialize app: $e',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Function to sign in anonymously (can be called from elsewhere if needed)
Future<void> signInAnonymously() async {
  try {
    UserCredential userCredential =
        await FirebaseAuth.instance.signInAnonymously();
    print('Signed in anonymously with UID: ${userCredential.user?.uid}');
  } on FirebaseAuthException catch (e) {
    print('Failed to sign in anonymously: ${e.message}');
    rethrow; // Optionally rethrow to handle this error elsewhere
  } catch (e) {
    print('Unexpected error during anonymous sign-in: $e');
    rethrow;
  }
=======
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => SignupProvider()),
    ChangeNotifierProvider(create: (context) => SigninProvider()),
    ChangeNotifierProvider(create: (context) => AuthProvider()),
    ChangeNotifierProvider(create: (context) => CartProvider())
  ], child: const MyApp()));
>>>>>>> 683b9c2b73f831ada9936b25e28e8b18ad7c50da
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Harvest Hub Mobile App',
      theme: ThemeData.light(useMaterial3: true), // Material 3 enabled
      home: const SplashScreen(),
    );
  }
}
