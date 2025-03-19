import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:joura_pothole/controller/auth_controller.dart';
import 'package:joura_pothole/core/components/custom_input_field.dart';
import 'package:joura_pothole/core/components/custom_phone_input_field.dart';
import 'package:joura_pothole/core/constants/app_fonts.dart';
import 'package:joura_pothole/core/constants/svg_icons.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),

          child: Center(
            child: SizedBox(
              height: Get.height * 0.85,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Login to your Account", style: AppFonts.titleLarge),
                    SizedBox(height: 24.h),
                    CustomInputField(
                      controller: authController.emailController,
                      title: "Email",
                      isEmail: true,
                      prefixIcon: SvgIcons.mail,
                    ),
                    SizedBox(height: 16.h),
                    CustomPhoneInputField(
                      controller: authController.phoneController,
                    ),
                    SizedBox(height: 16.h),
                    CustomInputField(
                      controller: authController.passwordController,
                      isPassword: true,
                      title: "Password",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
