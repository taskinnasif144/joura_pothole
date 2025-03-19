import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  // =============>>>>>>>>> On Boarding Screen <<<<<<<<<<<=================
  final PageController onBoardingPageController = PageController();
  RxInt onBoardingCurrentIndex = 0.obs;

  // =============>>>>>>>>> Sign in Screen <<<<<<<<<<<=================
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  void onClose() {
    onBoardingPageController.dispose();
    emailController.dispose();
    passwordController.dispose();
    phoneController.dispose();
    super.onClose();
  }
}
