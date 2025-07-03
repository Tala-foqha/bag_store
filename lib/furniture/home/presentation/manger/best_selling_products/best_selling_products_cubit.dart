// furniture/home/presentation/manger/best_selling_products/best_selling_products_cubit.dart
import 'package:bag_store_ecommerec/furniture/home/domain/entites/products_entity.dart';
import 'package:bag_store_ecommerec/furniture/home/domain/repos/products_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'best_selling_products_state.dart';

class BestSellingProductsCubit extends Cubit<BestSellingProductsState> {
  BestSellingProductsCubit(this.productsRepo) : super(BestSellingProductsInitial());
  final ProductsRepo productsRepo;
  Future<void>getProducts()async{
    emit(BestSellingProdutsLoading());
    var result=await productsRepo.getBestSellingProducts();
    result.fold((f)=>emit(BestSellingProdutsFailure(errormessage: f.message)),
     (success)=>emit(BestSellingProdutsSuccess( bestProducts: success)));

  }

  
}
