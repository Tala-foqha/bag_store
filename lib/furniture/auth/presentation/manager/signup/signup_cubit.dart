// furniture/auth/presentation/manager/signup/signup_cubit.dart
import 'package:bag_store_ecommerec/furniture/auth/domain/repos/auth_repo.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/manager/cubits/signup/signup_cubit.dart';
import 'package:bloc/bloc.dart';


class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRebo) : super(SignupInitial());
final AuthRebo authRebo; 
Future<void>createUserWithEmailAndPassword(
  String email,
  String password,
  String phoneNumber,
  String name,
  )async{
    emit(SignupLoading());
    final result=await authRebo.createUserWithEmailAndPassword(
      email,
     password,
     phoneNumber,
      name);
      result.fold((failure)=>
      emit(SignupFailure(message: failure.message))
      , (userEntity)=>emit(SignupSuccess(userEntity: userEntity)));

  }
  
}
