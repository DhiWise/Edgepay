import '/core/app_export.dart';
import 'package:razorpay_x_dhiwise/presentation/splashscreen_screen/models/splashscreen_model.dart';

class SplashscreenController extends GetxController {
  Rx<SplashscreenModel> splashscreenModelObj = SplashscreenModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 5000), () {
      Get.offNamed(AppRoutes.homeScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
