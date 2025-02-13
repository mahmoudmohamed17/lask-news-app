import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:lask_news_app/core/errors/custom_exception.dart';

class FirebaseAuthService {
  Future<User> signIn({required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('An error with signIn in FirebaseAuthService ==> $e');
      if (e.code == 'user-not-found') {
        throw CustomException(message: 'The user is not found.');
      } else if (e.code == 'wrong-password') {
        throw CustomException(
            message: 'Wrong password provided for this user.');
      } else {
        throw CustomException(
            message: 'An error occured, please try again later.');
      }
    }
  }

  Future<User> signUp({required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('An error with signUp in FirebaseAuthService ==> $e');

      if (e.code == 'weak-password') {
        throw CustomException(message: 'Weak password, try a strong one.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
            message: 'The account already exists for that email.');
      } else {
        throw CustomException(
            message: 'An error occured, please try again later.');
      }
    }
  }
}
