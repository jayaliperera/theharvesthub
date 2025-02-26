import 'package:firebase_auth/firebase_auth.dart';

class AuthController {
  Future<void> createAccount(
      {required String email, required String password}) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('APPLOG :: The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('APPLOG :: The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> signOutUser() async {
    await FirebaseAuth.instance.signOut();
  }
}
