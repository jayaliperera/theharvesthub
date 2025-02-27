import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theharvesthub/screens/auth_screen/signin_page.dart';
import 'package:theharvesthub/screens/home_screen/Home_Page/home_page.dart';
import 'package:theharvesthub/utills/custom_navigators.dart';
import 'package:theharvesthub/providers/auth_provider.dart' as local;



class AuthController {
  Future<void> listenAuthState(BuildContext context) async {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('APPLOG ::User is currently signed out!');

        CustomNavigators.goTo(context, const SignInPage());
      } else {
        Provider.of<local.AuthProvider>(context, listen: false).setUser(user);
        print('APPLOG ::User is signed in!');
        print("APPLOG :: $user");

        CustomNavigators.goTo(context, const HomePage());
      }
    });
  }

  Future<bool> createAccount(
      {required String email, required String password}) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('APPLOG :: The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('APPLOG :: The account already exists for that email.');
      }
      return false;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<void> signOutUser() async {
    await FirebaseAuth.instance.signOut();
  }

  Future<bool> signInWithPassword(
      {required String email, required String password}) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('APPLOG :: No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('APPLOG :: Wrong password provided for that user.');
      }
      return false;
    }
  }

  Future<void> sendPasswordResetEmail(String email) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }
}

