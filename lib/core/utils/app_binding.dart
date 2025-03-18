import 'package:get/get.dart';
import 'package:joura_pothole/controller/auth_controller.dart';

class AppBinding {
  static Bindings bindings = BindingsBuilder(() {
    Get.lazyPut(() => AuthController());
  });
}
