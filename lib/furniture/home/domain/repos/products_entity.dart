// furniture/home/domain/repos/products_entity.dart
import 'dart:io';

import 'package:bag_store_ecommerec/furniture/home/domain/repos/review_entity.dart';


class ProductsEntity {
  final String bagName;
  final String brandName;
  final String description;
  final String price;
 // final File image;
   String ?imageUrl;
    final List<String>size;
 final num avgRating=0;
 bool isFeatured=false;
 final num ratingCount=0;
 final List<ReviewEntity>reviews;

  ProductsEntity(  {
  required this.bagName,
  required this.isFeatured,
  required this.brandName,
  required this.description,
  required this.price, 
   //required this.image,
    this.imageUrl,
    required this.size,
    required this.reviews
   });
}