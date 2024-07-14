import 'package:bloc/bloc.dart';
import 'package:comamarce/features/authentication/data/models/login_model/Login_model.dart';
import 'package:comamarce/features/authentication/data/repos/auth_repos.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.authRepos) : super(RegisterInitial());
  final forKey =GlobalKey<FormState>();
  final firstNameController  = TextEditingController();
  final lastNameController  = TextEditingController();
  final userNameController  = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();
  final password1Controller  = TextEditingController();
  final password2Controller  = TextEditingController();
  bool isLoading=false;
  final AuthRepos authRepos;


  Future<void> register()async{
     isLoading=true;
    emit(RegisterLoading());

  var result= await authRepos.registerUser(
        email: emailController.text,
        firstName: firstNameController.text,
        lastName: lastNameController.text,
        userName: userNameController.text,
        password1: password1Controller.text,
        password2: password2Controller.text,
        phoneNumber: phoneNumberController.text
    );
  result.fold(
          (failure){
             isLoading=false;

            emit(RegisterError(errMassage: failure.errMassage));
          },
          (token){
             isLoading=false;
            emit(RegisterSuccess());
          }
  );
  }

  void registerValidation(){
    if(forKey.currentState!.validate()){
      register();
    }
  }
}
