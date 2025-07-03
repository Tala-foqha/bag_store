// furniture/home/presentation/viewss/manger/best_selling_products/best_selling_products_state.dart
part of 'best_selling_products_cubit.dart';

@immutable
abstract class BestSellingProductsState {}

class BestSellingProductsInitial extends BestSellingProductsState {}
class BestSellingProdutsLoading extends BestSellingProductsState {}
class BestSellingProdutsFailure extends BestSellingProductsState {
  final String errormessage;

  BestSellingProdutsFailure({required this.errormessage});
}
class BestSellingProdutsSuccess extends BestSellingProductsState {
 final List<ProductsEntity>bestProducts;

  BestSellingProdutsSuccess({required this.bestProducts});
}





