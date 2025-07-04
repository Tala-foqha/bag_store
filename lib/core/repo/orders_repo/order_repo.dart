// core/repo/orders_repo/order_repo.dart
import 'package:bag_store_ecommerec/core/errors/failures.dart';
import 'package:bag_store_ecommerec/furniture/check_out/domain/entites/order_entity.dart';
import 'package:dartz/dartz.dart';

abstract class OrderRepo {
  Future<Either<Failure,void>>addOrders({required OrderEntity orders});
}