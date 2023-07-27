import 'dart:convert';

Usermodel categoryModelFromJson(String str) =>
    Usermodel.fromJson(json.decode(str));

class Usermodel {
  Usermodel({
    required this.userId,
    required this.userName,

    required this.userEmail,
    required this.userPhone,
    
    required this.userPassword,
  });
  String? userId;
  String? userName;
  String? userEmail;
  String? userPhone;

  String? userPassword;

  factory Usermodel.fromJson(Map<String, dynamic> json) => Usermodel(
        userId: json["userId"],
        userName: json["userName"],
        userEmail: json["userEmail"],
      
        userPassword: json["userPassword"],
      
        userPhone: json["userPhone"],
      );

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'userName': userName,
        'userEmail': userEmail,
        
        'userPassword': userPassword,
   
        'userPhone': userPhone,
      };
}
