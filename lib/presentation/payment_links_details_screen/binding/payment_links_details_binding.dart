import '../controller/payment_links_details_controller.dart';
import 'package:get/get.dart';

class PaymentLinksDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentLinksDetailsController());
  }
}
