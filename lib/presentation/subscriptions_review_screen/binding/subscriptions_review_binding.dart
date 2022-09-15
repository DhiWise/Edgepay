import '../controller/subscriptions_review_controller.dart';
import 'package:get/get.dart';

class SubscriptionsReviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubscriptionsReviewController());
  }
}
