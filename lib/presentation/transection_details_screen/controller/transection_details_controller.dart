import '/core/app_export.dart';
import 'package:razorpay_x_dhiwise/presentation/transection_details_screen/models/transection_details_model.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/data/models/payK93XyAnu5kuCXA/get_pay_k93_xy_anu5ku_c_x_a_resp.dart';
import 'package:razorpay_x_dhiwise/data/apiClient/api_client.dart';
import 'package:intl/intl.dart';

class TransectionDetailsController extends GetxController {
  var transectionid = Get.arguments[NavigationArgs.transectionid];

  TextEditingController timeController2 = TextEditingController();

  TextEditingController timeOneController1 = TextEditingController();

  Rx<TransectionDetailsModel> transectionDetailsModelObj =
      TransectionDetailsModel().obs;

  GetPayK93XyAnu5kuCXAResp getPayK93XyAnu5kuCXAResp =
      GetPayK93XyAnu5kuCXAResp();

  @override
  void onReady() {
    super.onReady();
    this.callFetchPayK93XyAnu5kuCXA(
      successCall: _onFetchPayK93XyAnu5kuCXASuccess,
      errCall: _onFetchPayK93XyAnu5kuCXAError,
    );
  }

  @override
  void onClose() {
    super.onClose();
    timeController2.dispose();
    timeOneController1.dispose();
  }

  void callFetchPayK93XyAnu5kuCXA(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchPayK93XyAnu5kuCXA(
      transectionId: transectionid,
        headers: {
          'Authorization':
              'Basic $base64encodedToken',
        },
        onSuccess: (resp) {
          onFetchPayK93XyAnu5kuCXASuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchPayK93XyAnu5kuCXAError(err);
          if (errCall != null) {
            errCall();
          }
        });
  }

  void onFetchPayK93XyAnu5kuCXASuccess(var response) {
    getPayK93XyAnu5kuCXAResp = GetPayK93XyAnu5kuCXAResp.fromJson(response);
  }

  void onFetchPayK93XyAnu5kuCXAError(var err) {
    Get.rawSnackbar(
      messageText: Text(
        '$err',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  void _onFetchPayK93XyAnu5kuCXASuccess() {
     transectionDetailsModelObj.value.priceTxt.value ="₹ "+ (getPayK93XyAnu5kuCXAResp.amount!/100).toString();
    transectionDetailsModelObj.value.status.value = getPayK93XyAnu5kuCXAResp.status!.toString();
    transectionDetailsModelObj.value.mobileNoTxt.value = getPayK93XyAnu5kuCXAResp.contact!.toString();
    transectionDetailsModelObj.value.emailTxt.value = getPayK93XyAnu5kuCXAResp.email!.toString();
    final df = new DateFormat('dd MMMM yyyy, hh:mm a');
    var myvalue = getPayK93XyAnu5kuCXAResp.createdAt;
    transectionDetailsModelObj.value.createdTxt.value = df.format(new DateTime.fromMillisecondsSinceEpoch(myvalue! * 1000)).toString();
    transectionDetailsModelObj.refresh();
  }

  void _onFetchPayK93XyAnu5kuCXAError() {}
}
