// furniture/auth/data/models/user_model.dart
import 'package:bag_store_ecommerec/furniture/auth/domain/entites/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel extends UserEntity{
  UserModel({required super.name,
   required super.email,
    required super.uId, 
    required super.phone});

    factory UserModel.fromFirebaseUser(User user){
      return UserModel(name: user.displayName??'',
       email: user.email??"",
        uId: user.uid,
         phone: user.phoneNumber??"");
    }

    factory UserModel.fromJson(Map<String,dynamic>json){
      return UserModel(
        name: json['name'], 
      email: json['email'],
       uId: json['uId'],
        phone: json['phone']);
    }

}