import 'package:get/get.dart';
import 'subscriptions_item_model.dart';

class SubscriptionsModel {
  RxList<SubscriptionsItemModel> subscriptionsItemList =
      RxList.filled(0, SubscriptionsItemModel());
}
