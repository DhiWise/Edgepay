import '../controller/transection_details_controller.dart';
import 'package:get/get.dart';

class TransectionDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransectionDetailsController());
  }
}
