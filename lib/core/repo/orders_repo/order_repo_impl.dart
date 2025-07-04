// core/repo/orders_repo/order_repo_impl.dart
import 'package:bag_store_ecommerec/core/errors/failures.dart';
import 'package:bag_store_ecommerec/core/repo/orders_repo/order_repo.dart';
import 'package:bag_store_ecommerec/core/services/database_services.dart';
import 'package:bag_store_ecommerec/core/services/fire_base_auth_services.dart';
import 'package:bag_store_ecommerec/core/services/firestore_services.dart';
import 'package:bag_store_ecommerec/core/utils/backend_endpoints.dart';
import 'package:bag_store_ecommerec/furniture/check_out/data/model/order_model.dart';
import 'package:bag_store_ecommerec/furniture/check_out/domain/entites/order_entity.dart';
import 'package:dartz/dartz.dart';

class OrderRepoImpl implements OrderRepo {
  final DatabaseServices firestoreServices;

  OrderRepoImpl({required this.firestoreServices});
  @override
  Future<Either<Failure, void>> addOrders({required OrderEntity orders})async {
    try {
  await firestoreServices.addData(
    collectionName: BackendEndpoints.addorders, data: OrderModel.fromEntity(orders).toJson());
  return Right(null);
}  catch (e) {
  return Left(ServerFailure(e.toString()));
}
  }
}