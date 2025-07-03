// furniture/home/presentation/viewss/manger/get_products/get_products_cubit.dart
import 'package:bag_store_ecommerec/furniture/home/domain/repos/products_entity.dart';
import 'package:bag_store_ecommerec/furniture/home/domain/repos/products_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'get_products_state.dart';

class GetProductsCubit extends Cubit<GetProductsState> {
  GetProductsCubit(this.productsRepo) : super(GetProductsInitial());
final ProductsRepo productsRepo;
  Future<void>getProducts()async{
    emit(GetProductsLoading());
    var result=await productsRepo.getProducts();
    result.fold((f)=>emit(GetProductsFailure(errormessage: f.message)),
     (success)=>emit(GetProductsSuccess(products: success)));

  }

  
}
