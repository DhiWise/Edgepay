import '../controller/payment_links_controller.dart';
import 'package:get/get.dart';

class PaymentLinksBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentLinksController());
  }
}
