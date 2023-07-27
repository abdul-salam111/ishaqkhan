import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../const/firebaseConst.dart';
import '../../../routes/app_pages.dart';
import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  const SplashscreenView({Key? key}) : super(key: key);
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
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue[200],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                          onPressed: () {
                            if (currentUser != null) {
                              Get.offAllNamed(Routes.HOME);
                            } else {
                              Get.offAllNamed(Routes.AUTHENTICATION);
                            }
                          },
                          icon: const Icon(Icons.arrow_forward)),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
