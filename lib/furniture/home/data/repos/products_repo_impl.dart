// furniture/home/data/repos/products_repo_impl.dart
import 'package:bag_store_ecommerec/core/errors/failures.dart';
import 'package:bag_store_ecommerec/core/services/database_services.dart';
import 'package:bag_store_ecommerec/core/utils/backend_endpoints.dart';
import 'package:bag_store_ecommerec/furniture/home/data/models/products_model.dart';
import 'package:bag_store_ecommerec/furniture/home/domain/entites/products_entity.dart';
import 'package:bag_store_ecommerec/furniture/home/domain/repos/products_repo.dart';
import 'package:dartz/dartz.dart';

class ProductsRepoImpl implements ProductsRepo {
  final DatabaseServices databaseServices;

  ProductsRepoImpl({required this.databaseServices});
  @override
  Future<Either<Failure, List<ProductsEntity>>> getProducts() async{
    try {
  var data=await databaseServices.getData(path: BackendEndpoints.getProducts)
  as List<Map<String,dynamic>>;
  
  List<ProductsModel>products=data.map((e)=>ProductsModel.fromJson(e)).toList();
  List<ProductsEntity>productsEntities=products.map((e)=>e.toEntity()).toList();
  return Right(productsEntities);
} catch (e) {
return left(ServerFailure('Faild to get products'));
}
  }
  
  @override
  Future<Either<Failure, List<ProductsEntity>>> getBestSellingProducts()async {

    try {
  var data=await databaseServices.getData(
    path: BackendEndpoints.getProducts,
    query: {
      'limit':10,
      'orderBy':'sellingCount',
      'descending':true
    }
    
    )
  as List<Map<String,dynamic>>;
  
  List<ProductsModel>products=data.map((e)=>ProductsModel.fromJson(e)).toList();
  List<ProductsEntity>productsEntities=products.map((e)=>e.toEntity()).toList();
  return Right(productsEntities);
} catch (e) {
return left(ServerFailure('Faild to get products'));
}

  }
  

}