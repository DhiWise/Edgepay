import '../controller/subscriptions_plan_details_controller.dart';
import 'package:get/get.dart';

class SubscriptionsPlanDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubscriptionsPlanDetailsController());
  }
}
