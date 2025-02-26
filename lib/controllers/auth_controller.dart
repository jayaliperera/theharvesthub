import 'package:firebase_auth/firebase_auth.dart';

class AuthController {
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
