// furniture/check_out/presentation/views/manager/orders/orders_cubit.dart
import 'package:bag_store_ecommerec/core/repo/orders_repo/order_repo.dart';
import 'package:bag_store_ecommerec/furniture/check_out/domain/entites/order_entity.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'orders_state.dart';

class OrdersCubit extends Cubit<OrdersState> {
  OrdersCubit(this.orderRepo) : super(OrdersInitial());
  final OrderRepo orderRepo;
  Future<void>addOrder({required OrderEntity order})async{
    emit(OrdersLoading());
    final result=await orderRepo.addOrders(orders: order);
    result.fold((failure)=>emit(OrdersFailure(errormessage: failure.message)), 
    (success)=>emit(OrdersSuccess()));
  }

  
}
