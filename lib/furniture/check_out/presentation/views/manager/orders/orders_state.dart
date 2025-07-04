// furniture/check_out/presentation/views/manager/orders/orders_state.dart
part of 'orders_cubit.dart';

@immutable
abstract class OrdersState {}

class OrdersInitial extends OrdersState {}
class OrdersLoading extends OrdersState {}
class OrdersSuccess extends OrdersState {}
class OrdersFailure extends OrdersState {
  final String errormessage;

  OrdersFailure({required this.errormessage});
}





