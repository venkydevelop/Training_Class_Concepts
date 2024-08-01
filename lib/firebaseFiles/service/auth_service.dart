import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:training_session/mvvm/extension/snack_bar_extension.dart';

class FireBaseAuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already- use') {
        Get.showSnackBar(title: 'Failed', message: 'This email already in use');
      } else {
        Get.showSnackBar(
            title: 'Message', message: 'This error occured: ${e.code}');
      }
    }
    return null;
  }

  Future<User?> signInEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        Get.showSnackBar(
            title: 'Failed', message: 'Invalid UserName and Password');
      } else {
        Get.showSnackBar(
            title: 'Message', message: 'This error occured: ${e.code}');
      }
    }
    return null;
  }
}
