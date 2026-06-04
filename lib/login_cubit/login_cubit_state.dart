part of 'login_cubit_cubit.dart';

abstract class LoginCubitState {}

class LoginInitial extends LoginCubitState {}

class LoginLoading extends LoginCubitState {}

class LoginSuccess extends LoginCubitState {}

class LoginFailure extends LoginCubitState {
  final String errorMessage;

  LoginFailure(this.errorMessage);
}

class LoginPasswordVisibilityChanged extends LoginCubitState {}
