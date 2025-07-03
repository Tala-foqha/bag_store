// furniture/home/domain/repos/products_repo.dart
import 'package:bag_store_ecommerec/core/errors/failures.dart';
import 'package:bag_store_ecommerec/furniture/home/domain/entites/products_entity.dart';
import 'package:dartz/dartz.dart';

abstract class ProductsRepo{
Future<Either<Failure,List<ProductsEntity>>>getProducts();
Future<Either<Failure,List<ProductsEntity>>>getBestSellingProducts();


}