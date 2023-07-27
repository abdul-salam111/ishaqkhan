import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ishaqkhan/app/modules/commonWidgets/customTextfield.dart';
import 'package:ishaqkhan/app/modules/commonWidgets/customeButton.dart';
import 'package:ishaqkhan/app/modules/signup/controllers/signup_controller.dart';
import '../../const.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Image.asset(
                  "assets/images/logo.png",
                  color: darkcolor,
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                  child: Text(
                    "SignUp Account",
                    style: TextStyle(
                        fontSize: 25,
                        color: darkcolor,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    "Name*",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: darkcolor),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                customTextFields(
                    textEditingController: controller.nameController,
                    hintText: "eg.John",
                    prefixicon: Icons.email),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    "Email*",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: darkcolor),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                customTextFields(
                    textEditingController: controller.emailController,
                    hintText: "eg.John@gmail.com",
                    prefixicon: Icons.email),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    "Phone*",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: darkcolor),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                phoneTextField(controller.phoneController),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    "Password*",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: darkcolor),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                passWordTextField(
                    controller: controller.passwordController,
                    hintText: "********",
                    prefixicon: Icons.lock),
                const SizedBox(
                  height: 30,
                ),
                customButton(
                    onPress: () {
                      controller.signUp(
                          name: controller.nameController.text.toString(),
                          password:
                              controller.passwordController.text.toString(),
                          email: controller.emailController.text.toString(),
                          phoneno: controller.phoneController.text.toString());
                    },
                    btnName: "Create Account",
                    btnSize: const Size(double.infinity, 40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Have an account?",
                      style: TextStyle(color: darkcolor),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text("SignIn",
                            style: TextStyle(color: darkcolor)))
                  ],
                ),
              ],
            ),
          ),
        ),
        Obx(() => Visibility(
            visible: controller.isLoading.value,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Please Wait..."),
                Center(
                  child: CircularProgressIndicator(),
                ),
              ],
            )))
      ],
    ));
  }

  Widget passWordTextField({
    TextEditingController? controller,
    String? hintText,
    String? Label,
    IconData? prefixicon,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: true,
      style:
          const TextStyle(color: darkcolor, fontSize: 16, letterSpacing: 0.5),
      decoration: InputDecoration(
        prefixIcon: Icon(
          prefixicon,
          color: darkcolor,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        hintText: hintText,
        labelStyle:
            const TextStyle(color: darkcolor, fontSize: 16, letterSpacing: 0.5),
        labelText: Label,
        suffixIcon: const Icon(
          Icons.visibility_off,
          color: darkcolor,
        ),
        alignLabelWithHint: true,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: darkcolor, width: 1)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: darkcolor, width: 2)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: darkcolor, width: 1)),
      ),
    );
  }
}
