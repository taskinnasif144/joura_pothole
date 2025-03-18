import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  // On Boarding Screen
  final PageController onBoardingPageController = PageController();
  RxInt onBoardingCurrentIndex = 0.obs;

  @override
  void onClose() {
    onBoardingPageController.dispose();
    super.onClose();
  }
}
