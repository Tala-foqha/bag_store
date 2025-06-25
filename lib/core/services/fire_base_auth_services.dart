// core/services/fire_base_auth_services.dart
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
}