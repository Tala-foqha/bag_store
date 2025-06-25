// furniture/auth/presentation/manager/signup/signup_cubit.dart
import 'package:bag_store_ecommerec/furniture/auth/domain/entites/user_entity.dart';
import 'package:bag_store_ecommerec/furniture/auth/domain/repos/auth_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'signup_state.dart';

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
    final result=authRebo.createUserWithEmailAndPassword(
      email,
     password,
     phoneNumber,
      name);
      

  }
  
}
