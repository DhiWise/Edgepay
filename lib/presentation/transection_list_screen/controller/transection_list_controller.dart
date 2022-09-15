import 'package:razorpay_x_dhiwise/presentation/transection_list_screen/models/listprice_item_model.dart';
import 'package:intl/intl.dart';
import '/core/app_export.dart';
import 'package:razorpay_x_dhiwise/presentation/transection_list_screen/models/transection_list_model.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/data/models/payments/get_payments_resp.dart';
import 'package:razorpay_x_dhiwise/data/apiClient/api_client.dart';

class TransectionListController extends GetxController {
  // var transectioid = Get.arguments[NavigationArgs.transectioid];

  Rx<TransectionListModel> transectionListModelObj = TransectionListModel().obs;

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
              'Basic $base64encodedToken',
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
    List<ListpriceItemModel> listpriceItemModelList = [];
    if (getPaymentsResp.items!.isNotEmpty) {
      for (var element in getPaymentsResp.items!) {
        var listpriceItemModel = ListpriceItemModel();
        listpriceItemModel.priceTxt.value = "₹ "+ (element.amount!/100).toString();
        listpriceItemModel.emailTxt.value = element.email!.toString();
        listpriceItemModel.statusTxt.value = element.status!.toString();
        listpriceItemModel.itemId.value = element.id!;
        final DateTime docDateTime = DateTime.parse(element.createdAt!.toString());
        listpriceItemModel.timeTxt.value = DateFormat("hh:mm a").format(docDateTime);
        listpriceItemModelList.add(listpriceItemModel);
      }
    }
    transectionListModelObj.value.listpriceItemList.value =
        listpriceItemModelList;
  }
  void _onFetchPaymentsError() {}
}
