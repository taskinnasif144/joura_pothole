import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:joura_pothole/core/helpers/app_routes.dart';
import 'package:joura_pothole/core/utils/app_binding.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (_, child) {
        return GetMaterialApp(
          initialBinding: AppBinding.bindings,
          getPages: AppRoutes.pages,
          initialRoute: AppRoutes.onBoarding,
        );
      },
    ),
  );
}
