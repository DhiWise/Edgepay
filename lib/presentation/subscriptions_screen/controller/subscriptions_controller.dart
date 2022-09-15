import '/core/app_export.dart';
import 'package:razorpay_x_dhiwise/presentation/subscriptions_screen/models/subscriptions_model.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/data/models/subscriptions/get_subscriptions_resp.dart';
import 'package:razorpay_x_dhiwise/data/apiClient/api_client.dart';
import '../models/subscriptions_item_model.dart';
import 'package:intl/intl.dart';

class SubscriptionsController extends GetxController {
  Rx<SubscriptionsModel> subscriptionsModelObj = SubscriptionsModel().obs;

  GetSubscriptionsResp getSubscriptionsResp = GetSubscriptionsResp();

  @override
  void onReady() {
    super.onReady();
    this.callFetchSubscriptions(
      successCall: _onFetchSubscriptionsSuccess,
      errCall: _onFetchSubscriptionsError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchSubscriptions(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchSubscriptions(
        headers: {
          'Authorization':
          'Basic ${base64encodedToken}',
        },
        onSuccess: (resp) {
          onFetchSubscriptionsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchSubscriptionsError(err);
          if (errCall != null) {
            errCall();
          }
        });
  }

  void onFetchSubscriptionsSuccess(var response) {
    getSubscriptionsResp = GetSubscriptionsResp.fromJson(response);
  }

  void onFetchSubscriptionsError(var err) {
    if (err is NoInternetException) {
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

  void _onFetchSubscriptionsSuccess() {
    List<SubscriptionsItemModel> subscriptionsItemModelList = [];
    if (getSubscriptionsResp!.items! != null &&
        getSubscriptionsResp!.items!.isNotEmpty) {
      for (var element in getSubscriptionsResp!.items!) {
        var subscriptionsItemModel = SubscriptionsItemModel();
        subscriptionsItemModel.plinkjm0q7eSNmTxt.value = element.id!.toString();
        final df = new DateFormat('dd MMMM yyyy, hh:mm a');
        var myvalue =  element.createdAt;
        subscriptionsItemModel.timeTxt.value = df.format(new DateTime.fromMillisecondsSinceEpoch(myvalue! * 1000)).toString();
        subscriptionsItemModel.statusTxt.value = element.status!.toString();
        subscriptionsItemModelList.add(subscriptionsItemModel);
      }
    }
    subscriptionsModelObj.value.subscriptionsItemList.value =
        subscriptionsItemModelList;
    // Get.find<PrefUtils>()
    //     .setStatus(getSubscriptionsResp.items!.status!.toString());
  }

  void _onFetchSubscriptionsError() {}
}