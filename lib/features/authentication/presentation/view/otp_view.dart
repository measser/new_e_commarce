import 'package:comamarce/core/units/shared/helper/api_service.dart';
import 'package:comamarce/features/authentication/data/models/login_model/Login_model.dart';
import 'package:comamarce/features/authentication/data/repos/auth_repos_impl.dart';
import 'package:comamarce/features/authentication/presentation/manager/otp_cubit/otp_cubit.dart';
import 'package:comamarce/features/authentication/presentation/view/widgets/reset_widets/otp_view_body.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key, required this.email});
final String email;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OtpCubit(AuthReposImpl(ApiService())),
      child: Scaffold(
        appBar: AppBar(),
        body:  OtpViewBody(email:email ,),
      ),
    );
  }
}




