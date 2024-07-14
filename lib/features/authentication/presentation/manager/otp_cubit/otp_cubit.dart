import 'package:bloc/bloc.dart';
import 'package:comamarce/features/authentication/data/models/login_model/Login_model.dart';
import 'package:comamarce/features/authentication/data/repos/auth_repos.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'otp_state.dart';

class OtpCubit extends Cubit<OtpState> {
  OtpCubit(this.authRepos) : super(OtpInitial());
  final AuthRepos authRepos;
  final emailController =TextEditingController();
  bool isLoading=false;
  Future<void> verify(String otp)async{
    isLoading=true;
    emit(OtpLoading());
    var result= await authRepos.verifyAccount(
        email: emailController.text,
        otp: otp,
    );
    result.fold((failure){
      isLoading=false;
      emit(OtpError(massError: failure.errMassage));
    }, (token){
      isLoading=false;
      emit(OtpSuccess());
    });
  }
}
