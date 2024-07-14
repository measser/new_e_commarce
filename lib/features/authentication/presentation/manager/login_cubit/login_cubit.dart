import 'package:comamarce/core/units/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../data/repos/auth_repos.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepos) : super(LoginInitial());

  GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  AuthRepos authRepos;
  bool isLoading=false;

  Future<void> login() async {

    SharedPreferences pref=await SharedPreferences.getInstance();
    isLoading=true;
    emit(LoginLoading());

    var result = await authRepos.loginUser(

        email: emailController.text, password: passwordController.text);

    result.fold(

            (failure) {
              isLoading=false;

          emit(LoginError(errMassage: failure.errMassage));

        },
            (login) {

              pref.setString('access_token', login.data!.accessToken ??'');
              isLoading=false;

          emit(LoginSuccess());
        });
  }

  void loginValidate(){
    if (formKey.currentState!.validate()) {
      login();
    }

  }

}
