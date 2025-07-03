// furniture/home/domain/entites/products_entity.dart

import 'package:bag_store_ecommerec/furniture/home/domain/entites/review_entity.dart';


class ProductsEntity {
  final String bagName;
  final String brandName;
  final String description;
  final num price;
  final String code;
 // final File image;
    final String imageUrl;
    final List<String>size;
 final num avgRating=0;
 bool isFeatured=false;
 final num ratingCount=0;
 final List<ReviewEntity>reviews;

  ProductsEntity(  {
  required this.bagName,
  required this.code,
  required this.isFeatured,
  required this.brandName,
  required this.description,
  required this.price, 
   //required this.image,
   required this.imageUrl,
    required this.size,
    required this.reviews
   });
}