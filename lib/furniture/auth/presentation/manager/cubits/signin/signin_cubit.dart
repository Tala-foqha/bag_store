// furniture/auth/presentation/manager/cubits/signin/signin_cubit.dart
import 'package:bag_store_ecommerec/furniture/auth/domain/entites/user_entity.dart';
import 'package:bag_store_ecommerec/furniture/auth/domain/repos/auth_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRebo) : super(SigninInitial());
final AuthRebo authRebo;
Future<void>signinUser(String email,String password)async{
  emit(SigninLoading());
  var response= await authRebo.signInWithEmailAndPassword(email, password);
  response.fold((failure)=>emit(SiginFailure(messege: failure.message)),
   (userEntity)=>emit(SigninSuccess(userEntity: userEntity)));
}
  
}
