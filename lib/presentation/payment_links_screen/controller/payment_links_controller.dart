import '/core/app_export.dart';
import 'package:razorpay_x_dhiwise/presentation/payment_links_screen/models/payment_links_model.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/data/models/v1PaymentLinks/get_v1_payment_links_resp.dart';
import 'package:razorpay_x_dhiwise/data/apiClient/api_client.dart';
import 'package:razorpay_x_dhiwise/core/constants/user_table.dart';
import '../models/payment_links_item_model.dart';
import 'package:intl/intl.dart';

class PaymentLinksController extends GetxController {
  Rx<PaymentLinksModel> paymentLinksModelObj = PaymentLinksModel().obs;

  GetV1PaymentLinksResp getV1PaymentLinksResp = GetV1PaymentLinksResp();

  @override
  void onReady() {
    super.onReady();
    Map<String, dynamic> queryParams = {
      'count': UserTable.count,
    };
    this.callFetchV1PaymentLinks(
      successCall: _onFetchV1PaymentLinksSuccess,
      errCall: _onFetchV1PaymentLinksError,
      queryParams: queryParams,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchV1PaymentLinks(
      {VoidCallback? successCall,
        VoidCallback? errCall,
        Map<String, dynamic> queryParams = const {}}) async {
    return Get.find<ApiClient>().fetchV1PaymentLinks(
        headers: {
          'Content-Type': 'application/json',
          'Authorization':
          'Basic ${base64encodedToken}',
        },
        onSuccess: (resp) {
          onFetchV1PaymentLinksSuccess(resp);
           if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchV1PaymentLinksError(err);
          if (errCall != null) {
            errCall();
          }
        },
        queryParams: queryParams);
  }

  void onFetchV1PaymentLinksSuccess(var response) {
    getV1PaymentLinksResp = GetV1PaymentLinksResp.fromJson(response);
  }

  void onFetchV1PaymentLinksError(var err) {
    print(err);
    Get.rawSnackbar(
      messageText: Text(
        '$err',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  void _onFetchV1PaymentLinksSuccess() {
    List<PaymentLinksItemModel> paymentLinksItemModelList = [];
    if (getV1PaymentLinksResp!.paymentLinks! != null &&
        getV1PaymentLinksResp!.paymentLinks!.isNotEmpty) {
      for (var element in getV1PaymentLinksResp!.paymentLinks!) {
        var paymentLinksItemModel = PaymentLinksItemModel();
        paymentLinksItemModel.priceOneTxt.value = "₹ " + (element.amount!/100)!.toString();
        paymentLinksItemModel.emailTxt.value =  element.customer!.email!.toString();
        final DateTime docDateTime = DateTime.parse(element.createdAt!.toString());
        paymentLinksItemModel.createAt.value = DateFormat("hh:mm a").format(docDateTime);
        paymentLinksItemModel.issuedTxt.value = element.status!.toString();
        paymentLinksItemModelList.add(paymentLinksItemModel);
      }
    }
    paymentLinksModelObj.value.paymentLinksItemList.value = paymentLinksItemModelList;
  }

  void _onFetchV1PaymentLinksError() {
    // Get.defaultDialog(
    //     onConfirm: () => Get.back(),
    //     title: "Auth Error",
    //     middleText: "Check Your Web Portal, Something bad happen.");
  }
}