import 'Data.dart';

/// message : "User Login Successfully"
/// data : {"first_name":"basel","last_name":"waheed","full_name":"basel waheed","username":"baselwaheed12","email":"4wsm@gmail.com","phone_number":"+201005745607","access_token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzIwMzAzMzgxLCJpYXQiOjE3MjAyMTY5ODEsImp0aSI6IjdhZDIyNDVhNGZmODRhNTE4N2RmN2VlOGFjYzJhZjM2IiwidXNlcl9pZCI6ImM4ZGZhNTgyLTkwNmYtNDQwNC05MWIxLTdkMDQ3NGVhN2JhNCIsImZpcnN0X25hbWUiOiJiYXNlbCIsImxhc3RfbmFtZSI6IndhaGVlZCIsImZ1bGxfbmFtZSI6ImJhc2VsIHdhaGVlZCIsInVzZXJuYW1lIjoiYmFzZWx3YWhlZWQxMiIsImVtYWlsIjoiNHdzbUBnbWFpbC5jb20ifQ.IzZ9wH1mYHrg7dpuARewPXm_Oo8R_fOFRAe7Zqr6UXI","refresh_token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMDgyMTc4MSwiaWF0IjoxNzIwMjE2OTgxLCJqdGkiOiJmYTFmM2U4MmE2MjM0MDgzYTBmMDA0MjliYTFiNjc3ZiIsInVzZXJfaWQiOiJjOGRmYTU4Mi05MDZmLTQ0MDQtOTFiMS03ZDA0NzRlYTdiYTQiLCJmaXJzdF9uYW1lIjoiYmFzZWwiLCJsYXN0X25hbWUiOiJ3YWhlZWQiLCJmdWxsX25hbWUiOiJiYXNlbCB3YWhlZWQiLCJ1c2VybmFtZSI6ImJhc2Vsd2FoZWVkMTIiLCJlbWFpbCI6IjR3c21AZ21haWwuY29tIn0.tlWa1ukR2hNW4Z9Spq4kOp-gCFCxuTblI_2CqxFcIb8"}

class LoginModel {
  LoginModel({
      this.message, 
      this.code,
      this.data,});

  LoginModel.fromJson(dynamic json) {
    message = json['message'];
    code = json['code'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? message;
  String? code;
  Data? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    map['code'] = code;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

}