import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_cubit_state.dart';

class LoginCubit extends Cubit<LoginCubitState> {
  LoginCubit() : super(LoginInitial());

  bool obscureText = true;

  void changePasswordVisibility() {
    obscureText = !obscureText;
    emit(LoginPasswordVisibilityChanged());
  }

  Future<void> login({required String email, required String password}) async {
    emit(LoginLoading());

    final prefs = await SharedPreferences.getInstance();

    await prefs.setBool('isLoggedIn', true);
    await prefs.setString('userName', email);

    emit(LoginSuccess());
  }
}
