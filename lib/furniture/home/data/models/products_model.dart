// furniture/home/data/models/products_model.dart
import 'dart:io';

import 'package:bag_store_ecommerec/furniture/home/data/models/review_model.dart';
import 'package:bag_store_ecommerec/furniture/home/domain/entites/products_entity.dart';

class ProductsModel {
   final String bagName;
  final String brandName;
  final String description;
  final num price;
  //final File image;
   final String imageUrl;
   final String code;
 final List<String>size;

 final num avgRating=0;
 final num ratingCount=0;
 final int sellingCount;
bool isFeatured=false;
 final List<ReviewModel>reviews;
 

  ProductsModel(   {required this.bagName, 
  required this.brandName, 
  required this.code,
  required this.description,
   required this.price, 
    this.sellingCount=0,
   //required this.image,
   required this.imageUrl,
   required this.isFeatured,
   required this.size,
   required this.reviews
  

   

   });
   factory ProductsModel.fromEntity(ProductsEntity addProductEntity){
    return ProductsModel(
      code: addProductEntity.code,
      isFeatured: addProductEntity.isFeatured,
   reviews: addProductEntity.reviews.map((e)=>ReviewModel.fromEntity(e)).toList(),
      bagName: addProductEntity.bagName,
     brandName: addProductEntity.brandName, 
     description: addProductEntity.description,
      price: addProductEntity.price, 
     // image: addProductEntity.image,
      imageUrl: addProductEntity.imageUrl, size: addProductEntity.size);
   }


   toJson(){
    return {
      'code':code,
    'bagName':bagName,
    'brandName':brandName,
    'description':description,
    'price':price,
    'size':size,
 
  'imageUrl':imageUrl



   };}

  ProductsEntity  toEntity(){
    return ProductsEntity(
      code: code,
      bagName: bagName, 
      imageUrl: imageUrl,
    isFeatured: isFeatured,
     brandName: brandName,
      description: description,
       price: price, size: size, 
       reviews: reviews.map((e)=>e.toEntity()).toList()
       );
   }


   factory ProductsModel.fromJson(Map<String, dynamic> json) {
  return ProductsModel(
    code: json['code'],
    bagName: json['bagName'] ,
    brandName: json['brandName'] ,
    description: json['description'] ,
    price: json['price'] ?? '',
    sellingCount: json['sellingCount'],
    //image: File(json['image']), // لا يمكن استرجاعه من JSON
    imageUrl: json['imageUrl'],
    isFeatured: json['isFeatured'] ?? false,
    size: List<String>.from(json['size'] ?? []),
    reviews: json['reviews']!=null?List<ReviewModel>.from(
      json['reviews'].map((e)=>ReviewModel.fromJson(e))
    ):[]
  );
}

}