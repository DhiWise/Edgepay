import 'package:get/get.dart';
import 'payment_links_item_model.dart';

class PaymentLinksModel {
  RxList<PaymentLinksItemModel> paymentLinksItemList =
      RxList.filled(0, PaymentLinksItemModel());
}
