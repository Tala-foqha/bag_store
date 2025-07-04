// furniture/check_out/data/model/shipping_address_model.dart
import 'package:bag_store_ecommerec/furniture/check_out/domain/entites/shipping_address_entity.dart';
import 'package:bag_store_ecommerec/furniture/check_out/presentation/views/widgets/shipping_item.dart';

class ShippingAddressModel {
   String? name;
   String? phone;
   String? city;
   String ?email;
   String ?address;
   String ?addressDetails;

  ShippingAddressModel({
     this.name,this.phone,this.city, this.email,this.address,this.addressDetails});
     
 factory ShippingAddressModel.fromEntity(ShippingAddressEntity shippingAddressEntity){
  return ShippingAddressModel(
   name: shippingAddressEntity.name,
   phone: shippingAddressEntity.phone,
   city: shippingAddressEntity.city,
   address: shippingAddressEntity.address,
   addressDetails: shippingAddressEntity.addressDetails,
   email: shippingAddressEntity.email 
  );
  
 }
 toJson(){
  return{
  'name':name,
  'phone':phone,
  'city':city,
  'email':email,
  'address':address,
  'addressDetails':addressDetails,
  
 };
 }
@override
  String toString(){
    return '$address $addressDetails $city';
}}