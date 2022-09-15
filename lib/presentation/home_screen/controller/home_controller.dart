import '/core/app_export.dart';
import 'package:razorpay_x_dhiwise/presentation/home_screen/models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/data/models/payments/get_payments_resp.dart';
import 'package:razorpay_x_dhiwise/data/apiClient/api_client.dart';
import '../models/home_item_model.dart';
import 'package:intl/intl.dart';

class HomeController extends GetxController {
  Rx<HomeModel> homeModelObj = HomeModel().obs;

  GetPaymentsResp getPaymentsResp = GetPaymentsResp();

  @override
  void onReady() {
    super.onReady();
    Map<String, dynamic> queryParams = {};
    this.callFetchPayments(
      successCall: _onFetchPaymentsSuccess,
      errCall: _onFetchPaymentsError,
      queryParams: queryParams,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchPayments(
      {VoidCallback? successCall,
        VoidCallback? errCall,
        Map<String, dynamic> queryParams = const {}}) async {
    return Get.find<ApiClient>().fetchPayments(
        headers: {
          'Content-type': 'application/json',
          'Authorization':
          'Basic ${base64encodedToken}',
        },
        onSuccess: (resp) {
          onFetchPaymentsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchPaymentsError(err);
          if (errCall != null) {
            errCall();
          }
        },
        queryParams: queryParams);
  }

  void onFetchPaymentsSuccess(var response) {
    getPaymentsResp = GetPaymentsResp.fromJson(response);
  }

  void onFetchPaymentsError(var err) {
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

  void _onFetchPaymentsSuccess() {
    List<HomeItemModel> homeItemModelList = [];
    if (getPaymentsResp!.items! != null && getPaymentsResp!.items!.isNotEmpty) {
      for (var element in getPaymentsResp!.items!) {
        var homeItemModel = HomeItemModel();
        homeItemModel.priceOneTxt.value = (element.amount!/100)!.toString();
        homeItemModel.capturedTxt.value = element.status!.toString();
        homeItemModel.emailTxt.value = element.email!.toString();
        final DateTime docDateTime = DateTime.parse(element.createdAt!.toString());
        homeItemModel.createTimeTxt.value =  DateFormat("hh:mm a").format(docDateTime);

        homeItemModelList.add(homeItemModel);
      }
    }
    homeModelObj.value.homeItemList.value = homeItemModelList;
  }

  void _onFetchPaymentsError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Error Auth",
        middleText: "Authentication issue");
  }
}
