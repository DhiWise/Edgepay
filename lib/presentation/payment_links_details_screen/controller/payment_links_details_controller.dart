import '/core/app_export.dart';
import 'package:razorpay_x_dhiwise/presentation/payment_links_details_screen/models/payment_links_details_model.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/data/models/plinkK9lknSbunX2cgk/get_plink_k9lkn_sbun_x2cgk_resp.dart';
import 'package:razorpay_x_dhiwise/data/apiClient/api_client.dart';
import 'package:razorpay_x_dhiwise/data/models/cancel/post_cancel_resp.dart';
import 'package:razorpay_x_dhiwise/data/models/v1PaymentLinks/post_v1_payment_links_resp.dart';
import 'package:intl/intl.dart';

class PaymentLinksDetailsController extends GetxController {
  var paymentid = Get.arguments[NavigationArgs.paymentid];

  TextEditingController timeController = TextEditingController();

  TextEditingController timeOneController = TextEditingController();

  Rx<PaymentLinksDetailsModel> paymentLinksDetailsModelObj =
      PaymentLinksDetailsModel().obs;

  GetPlinkK9lknSbunX2cgkResp getPlinkK9lknSbunX2cgkResp =
      GetPlinkK9lknSbunX2cgkResp();

  PostCancelResp postCancelResp = PostCancelResp();

  PostV1PaymentLinksResp postV1PaymentLinksResp = PostV1PaymentLinksResp();

  @override
  void onReady() {
    super.onReady();
    this.callFetchPlinkK9lknSbunX2cgk(
      successCall: _onFetchPlinkK9lknSbunX2cgkSuccess,
      errCall: _onFetchPlinkK9lknSbunX2cgkError,
    );
  }

  @override
  void onClose() {
    super.onClose();
    timeController.dispose();
    timeOneController.dispose();
  }

  void callFetchPlinkK9lknSbunX2cgk(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchPlinkK9lknSbunX2cgk(
        headers: {
          'Content-Type': 'application/json',
          'Authorization':
              'Basic ${base64encodedToken}',
        },
        onSuccess: (resp) {
          onFetchPlinkK9lknSbunX2cgkSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchPlinkK9lknSbunX2cgkError(err);
          if (errCall != null) {
            errCall();
          }
        });
  }

  void onFetchPlinkK9lknSbunX2cgkSuccess(var response) {
    getPlinkK9lknSbunX2cgkResp = GetPlinkK9lknSbunX2cgkResp.fromJson(response);
  }

  void onFetchPlinkK9lknSbunX2cgkError(var err) {
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

  void _onFetchPlinkK9lknSbunX2cgkSuccess() {
    paymentLinksDetailsModelObj.value.priceTxt.value = "₹ "+
        (getPlinkK9lknSbunX2cgkResp.amount!/100)!.toString();
    paymentLinksDetailsModelObj.value.weburlTxt.value =
        getPlinkK9lknSbunX2cgkResp.shortUrl!.toString();
    paymentLinksDetailsModelObj.value.emailTxt.value =
        getPlinkK9lknSbunX2cgkResp.customer!.email!.toString();
    final DateTime docDateTime = DateTime.parse(getPlinkK9lknSbunX2cgkResp.createdAt!.toString());
    // paymentLinksDetailsModelObj.createdTxt.value =  DateFormat("dd MMMM YYYY, hh:mm a").format(docDateTime);
    // paymentLinksDetailsModelObj.value.createdTxt.value =
    //     getPlinkK9lknSbunX2cgkResp.status!.toString();
    paymentLinksDetailsModelObj.value.inputLabelMFiveTxt.value =
        getPlinkK9lknSbunX2cgkResp.createdAt!.toString();
    Get.find<PrefUtils>()
        .setPaymentLinkId(getPlinkK9lknSbunX2cgkResp.id!.toString());
  }

  void _onFetchPlinkK9lknSbunX2cgkError() {}
  void callCreateCancel(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createCancel(
        headers: {
          'Content-Type': 'application/json',
        },
        onSuccess: (resp) {
          onCreateCancelSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateCancelError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateCancelSuccess(var response) {
    postCancelResp = PostCancelResp.fromJson(response);
  }

  void onCreateCancelError(var err) {
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

  void callCreateV1PaymentLinks(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createV1PaymentLinks(
        headers: {
          'Authorization':
              'Basic ${base64encodedToken}',
        },
        onSuccess: (resp) {
          onCreateV1PaymentLinksSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateV1PaymentLinksError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateV1PaymentLinksSuccess(var response) {
    postV1PaymentLinksResp = PostV1PaymentLinksResp.fromJson(response);
  }

  void onCreateV1PaymentLinksError(var err) {
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
}
