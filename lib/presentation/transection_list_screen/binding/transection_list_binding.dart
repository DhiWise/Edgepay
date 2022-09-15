import '../controller/transection_list_controller.dart';
import 'package:get/get.dart';

class TransectionListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransectionListController());
  }
}
