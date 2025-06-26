// furniture/auth/domain/repos/auth_repo.dart
import 'package:bag_store_ecommerec/core/errors/failures.dart';
import 'package:bag_store_ecommerec/furniture/auth/domain/entites/user_entity.dart';
import 'package:dartz/dartz.dart';


abstract class AuthRebo{
  Future<Either<Failure,UserEntity>>createUserWithEmailAndPassword(
    String email,String password,String prhone,String name);

    Future<Either<Failure,UserEntity>>signInWithEmailAndPassword(String email,String password);
Future addData({required UserEntity user});
    Future<Either<Failure,UserEntity>>signinWithGoogle();
}