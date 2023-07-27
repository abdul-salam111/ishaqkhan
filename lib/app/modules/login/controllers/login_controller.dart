import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ishaqkhan/app/const/firebaseConst.dart';

class LoginController extends GetxController {
  var isloading=false.obs;
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  void signin({String? email, String? password}) async {
    try {
      isloading.value=true;
      await firebaseauth.signInWithEmailAndPassword(
          email: emailController.text.toString(),
          password: passwordController.text.toString());
          isloading.value=false;
    } catch (e) {
       isloading.value=false;
      print(e);
    }
  }
}
