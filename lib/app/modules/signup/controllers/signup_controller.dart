import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ishaqkhan/app/routes/app_pages.dart';
import '../../../data/userModal.dart';

class SignupController extends GetxController {
  RxBool isLoading = false.obs;

  //textediting controller
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
  }

  // User Sign Up Method
  Future signUp(
      {String? name, String? email, String? phoneno, String? password}) async {
    try {
      isLoading.value = true;
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: email.toString(), password: password.toString())
          .then((user) async {
        Usermodel usermodel = Usermodel(
            userId: user.user!.uid,
            userName: name.toString(),
            userEmail: user.user!.email,
            userPhone: phoneno.toString(),
            userPassword: password.toString());
        await FirebaseFirestore.instance
            .collection("users")
            .doc(user.user!.uid)
            .set(usermodel.toJson())
            .then((value) async {
          // final SharedPreferences prefer = await prefs;
          // prefer.setString("user_Name", name.toString());
          // prefer.setString("phone_Number", phone.text.toString());
          // prefer.setString("user_Gender", gender.toString());
          // prefer.setString("user_Dob", dob.toString());
        });
      });
      Get.offAllNamed(Routes.HOME);
      isLoading.value = false;
    } on FirebaseAuthException catch (e) {
      isLoading.value = false;
      print(e);
    }
  }
}
