/// first_name : "basel"
/// last_name : "waheed"
/// full_name : "basel waheed"
/// username : "baselwaheed12"
/// email : "4wsm@gmail.com"
/// phone_number : "+201005745607"
/// access_token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzIwMzAzMzgxLCJpYXQiOjE3MjAyMTY5ODEsImp0aSI6IjdhZDIyNDVhNGZmODRhNTE4N2RmN2VlOGFjYzJhZjM2IiwidXNlcl9pZCI6ImM4ZGZhNTgyLTkwNmYtNDQwNC05MWIxLTdkMDQ3NGVhN2JhNCIsImZpcnN0X25hbWUiOiJiYXNlbCIsImxhc3RfbmFtZSI6IndhaGVlZCIsImZ1bGxfbmFtZSI6ImJhc2VsIHdhaGVlZCIsInVzZXJuYW1lIjoiYmFzZWx3YWhlZWQxMiIsImVtYWlsIjoiNHdzbUBnbWFpbC5jb20ifQ.IzZ9wH1mYHrg7dpuARewPXm_Oo8R_fOFRAe7Zqr6UXI"
/// refresh_token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMDgyMTc4MSwiaWF0IjoxNzIwMjE2OTgxLCJqdGkiOiJmYTFmM2U4MmE2MjM0MDgzYTBmMDA0MjliYTFiNjc3ZiIsInVzZXJfaWQiOiJjOGRmYTU4Mi05MDZmLTQ0MDQtOTFiMS03ZDA0NzRlYTdiYTQiLCJmaXJzdF9uYW1lIjoiYmFzZWwiLCJsYXN0X25hbWUiOiJ3YWhlZWQiLCJmdWxsX25hbWUiOiJiYXNlbCB3YWhlZWQiLCJ1c2VybmFtZSI6ImJhc2Vsd2FoZWVkMTIiLCJlbWFpbCI6IjR3c21AZ21haWwuY29tIn0.tlWa1ukR2hNW4Z9Spq4kOp-gCFCxuTblI_2CqxFcIb8"

class Data {
  Data({
      this.firstName, 
      this.lastName, 
      this.fullName, 
      this.username, 
      this.email, 
      this.phoneNumber, 
      this.accessToken, 
      this.refreshToken,
    this.password1,
    this.password2,
    this.otp
  });

  Data.fromJson(dynamic json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    fullName = json['full_name'];
    username = json['username'];
    email = json['email'];
    phoneNumber = json['phone_number'];
    accessToken = json['access_token'];
    refreshToken = json['refresh_token'];
    password1 = json['password1'];
    password2 = json['password2'];
    otp = json['otp'];
  }
  String? firstName;
  String? lastName;
  String? fullName;
  String? username;
  String? email;
  String? phoneNumber;
  String? accessToken;
  String? refreshToken;
  String? password1;
  String? password2;
  String? otp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['full_name'] = fullName;
    map['username'] = username;
    map['email'] = email;
    map['phone_number'] = phoneNumber;
    map['access_token'] = accessToken;
    map['refresh_token'] = refreshToken;
    map['refresh_token'] = refreshToken;
    map['password1'] = password1;
    map['password2'] = password2;
    map['otp'] = otp;
    return map;
  }

}