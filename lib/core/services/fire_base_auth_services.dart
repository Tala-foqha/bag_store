// core/services/fire_base_auth_services.dart
import 'dart:developer';

import 'package:bag_store_ecommerec/core/errors/exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuuthServices{
 
 
  Future<User>createUserWithEmailAndPassword({required String email,required String password})async{
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
    throw CustomException( message: 'The account already exists for that email.');
  }else{
    throw CustomException(message: 'An error occurred. Please try again later');
  }
} catch (e) {
  throw CustomException(message: 'An error occurred. Please try again later');
}

  }

  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("Exception in FirebaseAuthService.signInWithEmailAndPassword: ${e.toString()} and code is ${e.code}");

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
      log("Exception in FirebaseAuthService.signInWithEmailAndPassword: ${e.toString()}");
      throw CustomException(
        message: 'An error occurred. Please try again later.',
      );
    }
  }
}




