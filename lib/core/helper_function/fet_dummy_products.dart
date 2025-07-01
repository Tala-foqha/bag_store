// core/helper_function/fet_dummy_products.dart
import 'package:bag_store_ecommerec/furniture/home/domain/repos/products_entity.dart';

ProductsEntity getDummyProduct (){
 return ProductsEntity(
  bagName: 'Néonoé BB', 
 isFeatured: true,
  brandName: 'Prada',
   description: 'Re-Edition 1978 medium Re-Nylon and Saffiano lea', 
   price: '200.00', 
   imageUrl: 'https://raw.githubusercontent.com/Tala-foqha/bag_store/refs/heads/main/assets/images/bags.png', 
   size: ['Large'],
    reviews: []);

}
List<ProductsEntity>getDummyProducts(){
  return [
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),

  ];



}