import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:joura_pothole/controller/auth_controller.dart';
import 'package:joura_pothole/core/components/custom_button.dart';
import 'package:joura_pothole/core/constants/app_fonts.dart';
import 'package:joura_pothole/core/constants/auth_assets.dart';
import 'package:joura_pothole/core/helpers/app_routes.dart';

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
            //Page View for the three swipeable screens
            PageView(
              controller: pageController,
              scrollDirection: Axis.horizontal,
              children: [
                // Individual Screen
                _buildOnBoarding(
                  AuthAssets.onBoardingScreen3,
                  "Your Guide to Road Crack Management",
                ),
                // Individual Screen
                _buildOnBoarding(
                  AuthAssets.onBoardingScreen2,
                  "Essential Training for Leak Detection & Control",
                ),
                // Individual Screen
                _buildOnBoarding(
                  AuthAssets.onBoardingScreen1,
                  "Navigating the Manhole Problem",
                ),
              ],
              onPageChanged: (index) {
                authController.onBoardingCurrentIndex.value = index;
              },
            ),
            // Button and Page View states
            Positioned(
              bottom: 20.h,
              left: 0.w,
              right: 0.w,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                child: Column(
                  children: [
                    DotsIndicator(
                      // dots count == the number of individual screens
                      dotsCount: 3,
                      position: currentIndex.toDouble(),
                      decorator: DotsDecorator(
                        size: const Size.square(9.0),
                        activeSize: const Size(18.0, 9.0),
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 60.h),
                    CustomButton(
                      // currentIndex < 2 indicates we reached the last page
                      buttonTitle: currentIndex < 2 ? "Next" : "Get Started",
                      onTap: () {
                        if (currentIndex < 2) {
                          authController.onBoardingPageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.ease,
                          );
                        } else {
                          Get.offAllNamed(AppRoutes.signIn);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );
  }

  SizedBox _buildOnBoarding(image, title) {
    return SizedBox.expand(
      child: Column(
        children: [
          Image.asset(
            image,
            height: Get.height / 2,
            width: double.maxFinite,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 32),
            child: Text(
              title,
              style: AppFonts.titleLarge,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
