import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:joura_pothole/core/components/custom_input_field.dart';
import 'package:joura_pothole/core/constants/app_fonts.dart';
import 'package:joura_pothole/core/constants/svg_icons.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
                      title: "Email",
                      isEmail: true,
                      prefixIcon: SvgIcons.mail,
                    ),
                    SizedBox(height: 16.h),
                    CustomInputField(isPassword: true, title: "Password"),
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
