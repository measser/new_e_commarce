import 'dart:developer';

import 'package:comamarce/core/errors/feilure.dart';
import 'package:comamarce/core/units/shared/helper/api_service.dart';
import 'package:comamarce/features/authentication/data/repos/auth_repos.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../models/login_model/Login_model.dart';

class AuthReposImpl extends AuthRepos {
  final ApiService apiService;

  AuthReposImpl(this.apiService);

  @override
  Future<Either<Failure, LoginModel>> loginUser(
      {required  email, required  password}) async {

    try {
      var data = await apiService.postData(
        endPoint: '/api/auth/v1/login',
        data: {
          'email': email,
          'password': password,
        },
      );
      log(data.toString(), name: 'dataMEasser');
      return Right(
          LoginModel.fromJson(data)
      );
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, LoginModel>> registerUser({required String email, required String firstName, required String lastName, required String userName, required String password1, required String password2, required String phoneNumber})
  async{
    try {
      var data = await apiService.postData(
        endPoint: '/api/auth/v1/register',
        data: {
          'first_name': firstName,
          'last_name': lastName,
          'phone_number': phoneNumber,
          'email': email,
          'username': userName,
          'password1': password1,
          'password2': password2,

        },
      );
      return Right(
          LoginModel.fromJson(data),
      );
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }


  }

  @override
  Future<Either<Failure, LoginModel>> verifyAccount({required String email, required String otp}) async{
    try {
      var data = await apiService.postData(
        endPoint: '/api/auth/v1/verify-account',
        data: {
          'email': email,
          'otp': otp,
        },
      );
      log(data.toString(), name: 'dataMEasser');
      return Right(
          LoginModel.fromJson(data)
      );
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }



}