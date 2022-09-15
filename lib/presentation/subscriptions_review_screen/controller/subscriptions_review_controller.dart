import 'package:razorpay_x_dhiwise/data/storage/storage_helper.dart';
import 'package:razorpay_x_dhiwise/data/models/subscriptions/post_subscriptions_req.dart';
import '../../../data/models/subscriptions/post_subscriptions_req.dart';
import '/core/app_export.dart';
import 'package:razorpay_x_dhiwise/presentation/subscriptions_review_screen/models/subscriptions_review_model.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/data/models/subscriptions/post_subscriptions_resp.dart';
import 'package:razorpay_x_dhiwise/data/apiClient/api_client.dart';

class SubscriptionsReviewController extends GetxController {
  Rx<SubscriptionsReviewModel> subscriptionsReviewModelObj =
      SubscriptionsReviewModel().obs;

  PostSubscriptionsResp postSubscriptionsResp = PostSubscriptionsResp();




  @override
  void onReady() {
    getPlan();
    super.onReady();

  }

  @override
  void onClose() {
    super.onClose();
  }

  void callCreateSubscriptions(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createSubscriptions(
        headers: {
          'Content-Type': 'application/json',
          'Authorization':
              'Basic ${base64encodedToken}',
        },
        onSuccess: (resp) {
          onCreateSubscriptionsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateSubscriptionsError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  getPlan() async {
    subscriptionsReviewModelObj.value.plan.value = await StorageHelper.getPlan("Plan_id");
    subscriptionsReviewModelObj.value.totalCount.value = await StorageHelper.getCount("total_count");
    subscriptionsReviewModelObj.value.quantity.value = await StorageHelper.getQuantity("quantity");
    subscriptionsReviewModelObj.value.planName.value = await StorageHelper.getPlanName("planName");
    subscriptionsReviewModelObj.value.startAt.value = await StorageHelper.getStartDate("start_at");
    subscriptionsReviewModelObj.value.expireAt.value = await StorageHelper.getExpireDate("expire_by");
    subscriptionsReviewModelObj.value.customer_notify.value = await StorageHelper.getCustomerNotify("customer_notify");
    subscriptionsReviewModelObj.value.notify_phone.value = await StorageHelper.getMobile("notify_phone");
    subscriptionsReviewModelObj.value.notify_email.value = await StorageHelper.getEmail("notify_email");
    subscriptionsReviewModelObj.value.noExpiry.value = await StorageHelper.getNoExpiry("noExpiry");
    subscriptionsReviewModelObj.value.notes.value = await StorageHelper.getNotes("notes");
    subscriptionsReviewModelObj.value.amount.value = await StorageHelper.getAmount("Amount");
    subscriptionsReviewModelObj.refresh();

  }

  void onCreateSubscriptionsSuccess(var response) {
    postSubscriptionsResp = PostSubscriptionsResp.fromJson(response);
  }

  void onCreateSubscriptionsError(var err) {
    Get.rawSnackbar(
      messageText: Text(
        '$err',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
