import 'package:comamarce/core/errors/feilure.dart';
import 'package:dartz/dartz.dart';

import '../models/login_model/Login_model.dart';

abstract class AuthRepos {
  Future<Either<Failure, LoginModel>> loginUser(
      {required String email, required String password});

  Future<Either<Failure, LoginModel>> registerUser(
      {
        required String email,
        required String firstName,
        required String lastName,
        required String userName,
        required String password1,
        required String password2,
        required String phoneNumber,
      });
  Future<Either<Failure, LoginModel>> verifyAccount(
      {
        required String email,
        required String otp,

      });
}
