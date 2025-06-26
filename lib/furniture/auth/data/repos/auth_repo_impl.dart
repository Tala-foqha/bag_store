// furniture/auth/data/repos/auth_repo_impl.dart
import 'package:bag_store_ecommerec/core/errors/exceptions.dart';
import 'package:bag_store_ecommerec/core/errors/failures.dart';
import 'package:bag_store_ecommerec/core/services/database_services.dart';
import 'package:bag_store_ecommerec/core/services/fire_base_auth_services.dart';
import 'package:bag_store_ecommerec/core/utils/backend_endpoints.dart';
import 'package:bag_store_ecommerec/furniture/auth/data/models/user_model.dart';
import 'package:bag_store_ecommerec/furniture/auth/domain/entites/user_entity.dart';
import 'package:bag_store_ecommerec/furniture/auth/domain/repos/auth_repo.dart';
import 'package:dartz/dartz.dart';

class AuthRepoImpl extends AuthRebo {
  final FirebaseAuuthServices firebaseAuuthServices;
  final DatabaseServices databaseServices;

  AuthRepoImpl( {required this.firebaseAuuthServices,required this.databaseServices,});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String email, 
    String password,
    String phone,
    String name)async {
try {
  var user= await firebaseAuuthServices.createUserWithEmailAndPassword(
    email: email ,
  password: password);

  var userEntity= UserModel.fromFirebaseUser(user);

  await addData(user: userEntity);
  
  return Right(userEntity);
} on CustomException catch (e) {
  return left(ServerFailure( e.message));
}catch(e){
  return left(ServerFailure(e.toString()));
}
    
  }
  
  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(String email, String password)async {
    try {
  var user=await firebaseAuuthServices.signInWithEmailAndPassword(email: email, password: password);
  return Right(UserModel.fromFirebaseUser(user));
} on CustomException catch (e) {
    return left(ServerFailure( e.message));
} catch(e){
  return left(ServerFailure(e.toString()));
}
  }
  
  @override
  Future<Either<Failure, UserEntity>> signinWithGoogle()async {
    try {
  var user=await firebaseAuuthServices.signInWithGoogle();
  return Right(UserModel.fromFirebaseUser(user));
} on CustomException catch (e) {
  return left(ServerFailure(e.message));
}
    
  }
  
  @override
  Future addData({required UserEntity user})async {
    await databaseServices.addData(collectionName: BackendEndpoints.addUserData, data: user.toMap());

   
  }
 
}