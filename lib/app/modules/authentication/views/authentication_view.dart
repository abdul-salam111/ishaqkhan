import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ishaqkhan/app/modules/authentication/controllers/authentication_controller.dart';
import 'package:ishaqkhan/app/modules/authentication/views/signInAdmin.dart';
import 'package:ishaqkhan/app/modules/commonWidgets/customeButton.dart';

import '../../../routes/app_pages.dart';
import '../../const.dart';

class Authenticationview extends GetView<AuthenticationController> {
  const Authenticationview({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
          Colors.black,
          BlendMode.dstATop,
        ),
        opacity: 0.3,
        image: AssetImage(
          "assets/images/bgimage.jpg",
        ),
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset("assets/images/logo.png"),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Get Your Favorite Place On Your\nFingertip',
              style: TextStyle(
                fontSize: 23,
                letterSpacing: 0.5,
                wordSpacing: 1,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Spacer(),
            customButton(
                onPress: () {
                  Get.toNamed(Routes.LOGIN);
                },
                btnName: "Sign in as User",
                bgColor: darkcolor,
                textcolor: Colors.white,
                btnSize: const Size(double.infinity, 50)),
            const SizedBox(
              height: 10,
            ),
            customButton(
                onPress: () {
                  Get.toNamed(Routes.LOGIN);
                },
                btnName: "Sign in as Owner",
                bgColor: darkcolor,
                textcolor: Colors.white,
                btnSize: const Size(double.infinity, 50)),
            const SizedBox(
              height: 10,
            ),
            customButton(
                onPress: () {
                  Get.to(() => const SignInAdmin());
                },
                btnName: "Sign in as Admin",
                bgColor: darkcolor,
                textcolor: Colors.white,
                btnSize: const Size(double.infinity, 50)),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
