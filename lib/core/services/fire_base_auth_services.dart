// core/services/fire_base_auth_services.dart
import 'dart:developer';

import 'package:bag_store_ecommerec/core/errors/exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuuthServices {
  /// Create new user
  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CustomException(message: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: 'The account already exists for that email.');
      } else {
        throw CustomException(message: 'An error occurred. Please try again later.');
      }
    } catch (e) {
      throw CustomException(message: 'An error occurred. Please try again later.');
    }
  }

  /// Sign in user with email and password
  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("FirebaseAuthException: ${e.code}");
      if (e.code == 'user-not-found') {
        throw CustomException(message: 'Email is incorrect or does not exist.');
      } else if (e.code == 'wrong-password') {
        throw CustomException(message: 'Password or email is incorrect.');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'Please check your internet connection.');
      } else {
        throw CustomException(
          message: 'An unexpected error occurred. Please try again later.',
        );
      }
    } catch (e) {
      log("Exception: $e");
      throw CustomException(message: 'An error occurred. Please try again later.');
    }
  }

  /// Google Sign-In
  Future<User> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        throw CustomException(message: 'Google sign-in was cancelled.');
      }

      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
      final user = userCredential.user;

      if (user == null) {
        throw CustomException(message: 'Google sign-in failed.');
      }

      return user;
    } catch (e) {
      log("Google Sign-In error: $e");
      throw CustomException(message: 'An error occurred during Google sign-in.');
    }
  }
}
