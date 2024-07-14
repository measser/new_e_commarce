import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
// hussienmeasser@gmail.com
// MESOmeso20200
class ApiService{
  final _baseUrl='https://django-e-commerce-production-4be9.up.railway.app';
  final  Dio dio=Dio();



  Future<Map<String,dynamic>> postData ({required String endPoint,required  data,String? token})async{
   var response=await dio.post(
       '$_baseUrl$endPoint',
     data: data,

   );

   return response.data;
  }

  Future<Response> stripePost ({Map<String,String>?headers,required String url,required  data,required String token,String? contentType})async{
    var response=await dio.post(
      url,
     data: data,
      options: Options(
        contentType: Headers.formUrlEncodedContentType,
        headers: headers?? {
          'Authorization':"Bearer $token"
        },
      ),
    );

    return response;
  }
}


