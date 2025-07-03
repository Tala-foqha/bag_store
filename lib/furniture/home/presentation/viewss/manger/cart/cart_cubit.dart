// furniture/home/presentation/viewss/manger/cart/cart_cubit.dart
import 'package:bag_store_ecommerec/furniture/home/domain/entites/cart_entity.dart';
import 'package:bag_store_ecommerec/furniture/home/domain/entites/cart_item_entity.dart';
import 'package:bag_store_ecommerec/furniture/home/domain/repos/products_entity.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  CartEntity cartEntity=CartEntity(cartItems: []);


  void addProduct(ProductsEntity productEntity){
    bool isProductExist=cartEntity.isExist(productEntity);
    var cartItem=cartEntity.getCartItem(productEntity);
    if(isProductExist){
      cartItem!.increaseCount();
    }else{
     cartEntity.addCartItemEntity(cartItem!);
    emit(CartAdded());

  }}

  
}
