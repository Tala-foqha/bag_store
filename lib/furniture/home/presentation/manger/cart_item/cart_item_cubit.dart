// furniture/home/presentation/manger/cart_item/cart_item_cubit.dart
import 'package:bag_store_ecommerec/furniture/home/domain/entites/cart_item_entity.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cart_item_state.dart';

class CartItemCubit extends Cubit<CartItemState> {
  CartItemCubit() : super(CartItemInitial());
void updateCartItem(CartItemEntity cartItem){
  emit(CartItemUpdated(cartItemEntity: cartItem));
}
  
}
