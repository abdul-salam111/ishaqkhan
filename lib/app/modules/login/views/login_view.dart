import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ishaqkhan/app/modules/commonWidgets/customTextfield.dart';
import 'package:ishaqkhan/app/modules/commonWidgets/customeButton.dart';
import '../../../routes/app_pages.dart';
import '../../const.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
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
                  height: 150,
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
                    "Login Account",
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
                    hintText: "John@gmail.com",
                    prefixicon: Icons.email),
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
                      controller.signin(
                          email: controller.emailController.text.toString(),
                          password:
                              controller.passwordController.text.toString());
                    },
                    btnName: "SignIn",
                    btnSize: const Size(double.infinity, 40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(color: darkcolor),
                    ),
                    TextButton(
                        onPressed: () => Get.toNamed(Routes.SIGNUP),
                        child: const Text("SignUp",
                            style: TextStyle(color: darkcolor)))
                  ],
                ),
              ],
            ),
          ),
        ),
        Obx(() => Visibility(
            visible: controller.isloading.value,
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
