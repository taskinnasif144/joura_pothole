import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joura_pothole/controller/auth_controller.dart';
import 'package:joura_pothole/core/constants/app_fonts.dart';
import 'package:joura_pothole/core/constants/auth_assets.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  final AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        final currentIndex = authController.onBoardingCurrentIndex.value;
        final pageController = authController.onBoardingPageController;
        return Stack(
          children: [
            // PageView(
            //   controller: pageController,
            //   scrollDirection: Axis.horizontal,
            //   onPageChanged: (index) {
            //     authController.onBoardingCurrentIndex.value = index;
            //   },
            // ),
            SizedBox.expand(
              child: Column(
                children: [
                  Image.asset(
                    AuthAssets.onBoardingScreen3,
                    height: Get.height / 2,
                    width: double.maxFinite,
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 32),
                    child: Text(
                      "Your Guide to Road Crack Management",
                      style: AppFonts.roboto700s40,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
