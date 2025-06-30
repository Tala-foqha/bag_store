// furniture/home/presentation/viewss/manger/get_products/get_products_state.dart
part of 'get_products_cubit.dart';

@immutable
abstract class GetProductsState {}

class GetProductsInitial extends GetProductsState {}
class GetProductsLoading extends GetProductsState {}
class GetProductsSuccess extends GetProductsState {
  final List<ProductsEntity>products;

  GetProductsSuccess({required this.products});
}
class GetProductsFailure extends GetProductsState {
  final String errormessage;

  GetProductsFailure({required this.errormessage});

}





