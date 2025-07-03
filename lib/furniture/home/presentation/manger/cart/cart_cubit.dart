// furniture/home/presentation/manger/cart/cart_cubit.dart
import 'package:bag_store_ecommerec/furniture/home/domain/entites/cart_entity.dart';
import 'package:bag_store_ecommerec/furniture/home/domain/entites/cart_item_entity.dart';
import 'package:bag_store_ecommerec/furniture/home/domain/entites/products_entity.dart';
import 'package:bag_store_ecommerec/furniture/home/domain/repos/cart_item_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit(this.cartItemRepo) : super(CartInitial());
  CartEntity cartEntity=CartEntity(cartItems: []);
final CartItemRepo cartItemRepo;

  void addProduct(ProductsEntity productEntity){

    bool isProductExist=cartEntity.isExist(productEntity);
    var cartItem=cartEntity.getCartItem(productEntity);
    if(isProductExist){
      cartItem!.increaseCount();
    }else{
     cartEntity.addCartItemEntity(cartItem!);
    }
cartItemRepo.addToCart(cartItem);
print('add');
    emit(CartAdded());


  }
  void deleteCartItem( CartItemEntity cartItem){
    cartEntity.removeCartItem(cartItem);
  }

  
}
