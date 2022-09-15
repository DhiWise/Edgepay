import '../controller/standard_payment_link_controller.dart';
import 'package:get/get.dart';

class StandardPaymentLinkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StandardPaymentLinkController());
  }
}
