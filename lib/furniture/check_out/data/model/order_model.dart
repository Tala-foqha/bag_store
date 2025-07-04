// furniture/check_out/data/model/order_model.dart
import 'package:bag_store_ecommerec/furniture/check_out/data/model/order_product_model.dart';
import 'package:bag_store_ecommerec/furniture/check_out/data/model/shipping_address_model.dart';
import 'package:bag_store_ecommerec/furniture/check_out/domain/entites/order_entity.dart';

class OrderModel {
  final double totalPrice;
  final String uid;
  final ShippingAddressModel shippingAddressModel;
  final List< OrderProductModel>orderProducts;
  final String paymentMethod;

factory OrderModel.fromEntity(OrderEntity orders){
  return OrderModel(
    totalPrice: orders.cartEntity.calculateTotalPrice(),
   uid: orders.uId,
    shippingAddressModel:ShippingAddressModel.fromEntity(orders.shippingAddressEntity!),
     orderProducts: orders.cartEntity.cartItems.map((e)=>OrderProductModel.fromEntity(e)).toList(),
      paymentMethod: orders.payWithCash!?'Cash':'Paypal');
}



  OrderModel({required this.totalPrice, required this.uid, required this.shippingAddressModel, required this.orderProducts, required this.paymentMethod});
   toJson()=>{
'totalPrice':totalPrice,
'uid':uid,
'shippingAddressModel':shippingAddressModel,
'paymentMethod':paymentMethod,
'orderProducts':orderProducts.map((e)=>e.toJson()).toList()
   };

}