import '../controller/subscriptions_link_details_controller.dart';
import 'package:get/get.dart';

class SubscriptionsLinkDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubscriptionsLinkDetailsController());
  }
}
