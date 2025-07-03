// furniture/auth/presentation/manager/cubits/signin/signin_state.dart
part of 'signin_cubit.dart';

@immutable
abstract class SigninState {}

class SigninInitial extends SigninState {}
class SigninLoading extends SigninState{}
class SigninSuccess extends SigninState{
  final UserEntity userEntity;

  SigninSuccess({required this.userEntity});
}

class SiginFailure extends SigninState{
  final String message;

  SiginFailure({required this.message});
}


