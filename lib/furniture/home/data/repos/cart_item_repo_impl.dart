// furniture/home/data/repos/cart_item_repo_impl.dart
import 'package:bag_store_ecommerec/core/services/database_services.dart';
import 'package:bag_store_ecommerec/furniture/home/data/models/cart_item_model.dart';
import 'package:bag_store_ecommerec/furniture/home/domain/entites/cart_item_entity.dart';
import 'package:bag_store_ecommerec/furniture/home/domain/repos/cart_item_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CartItemRepoImpl implements CartItemRepo {
  final DatabaseServices databaseServices;

  CartItemRepoImpl({required this.databaseServices});
  @override
  final userId=FirebaseAuth.instance.currentUser!.uid;
  
  
 
  Future<void> addToCart(CartItemEntity cartItemEntity)async {
    await databaseServices.addData(
      documentId: cartItemEntity.productsEntity.code,
      collectionName:'users/${userId}/cart',
     data: CartItemModel.fromEntity(cartItemEntity).toJson());
  

  }
}