import 'package:blog_app/app/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class FirebaseAuthentication {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  get instance => null;

  Future<void> createAccount(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> login(String email, String password) async {
    // try {
    //   await _auth.signInWithEmailAndPassword(email: email, password: password);
    // } catch (e) {
    //   print(e.toString());
    // }

    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      if (credential.user != null) {
        Get.toNamed(Routes.HOME);

      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        // ignore: avoid_print
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        // ignore: avoid_print
        print('Wrong password provided for that user.');
      }
    }
  }

  Future<void> logOut() async {
    try {
      await _auth.signOut().whenComplete(() {
        Get.toNamed(Routes.LOGIN);
      });
      // await _auth.signOut().then((value) {
      //   Get.toNamed(Routes.AUTHENTICATION);
      // });
    } catch (e) {
      print(e.toString());
    }
  }
}
