import '/core/app_export.dart';
import 'package:razorpay_x_dhiwise/presentation/standard_payment_link_screen/models/standard_payment_link_model.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/data/models/paymentLinks/post_payment_links_resp.dart';
import 'package:razorpay_x_dhiwise/data/apiClient/api_client.dart';
import 'package:intl/intl.dart';

class StandardPaymentLinkController extends GetxController {
  Rx<DateTime> selectedDate = DateTime.now().obs;
  final dateFormat = DateFormat.yMMMEd();
  TextEditingController group272Controller = TextEditingController();

  TextEditingController inputFieldController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController mobileNoController = TextEditingController();

  TextEditingController inputFieldOneController = TextEditingController();

  TextEditingController paytestController = TextEditingController();

  Rx<StandardPaymentLinkModel> standardPaymentLinkModelObj =
      StandardPaymentLinkModel().obs;

  RxBool checkbox = false.obs;

  RxBool checkbox1 = false.obs;

  RxBool checkbox2 = false.obs;

  RxBool checkbox3 = false.obs;

  PostPaymentLinksResp postPaymentLinksResp = PostPaymentLinksResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group272Controller.dispose();
    inputFieldController.dispose();
    emailController.dispose();
    mobileNoController.dispose();
    inputFieldOneController.dispose();
    paytestController.dispose();
  }
  chooseDate() async {
    DateTime? pickedDate = await showDatePicker(
        context: Get.context!,
        initialDate: selectedDate.value,
        firstDate: DateTime(2000),
        lastDate: DateTime(2024),
        //initialEntryMode: DatePickerEntryMode.input,
        // initialDatePickerMode: DatePickerMode.year,
        helpText: 'Select DOB',
        cancelText: 'Close',
        confirmText: 'Confirm',
        errorFormatText: 'Enter valid date',
        errorInvalidText: 'Enter valid date range',
        fieldLabelText: 'DOB',
        fieldHintText: 'Month/Date/Year',
        selectableDayPredicate: disableDate);
    if (pickedDate != null && pickedDate != selectedDate.value) {
      selectedDate.value = pickedDate;
    }
  }
  bool disableDate(DateTime day) {
    if ((day.isAfter(DateTime.now().subtract(Duration(days: 1))) &&
        day.isBefore(DateTime.now().add(Duration(days: 5))))) {
      return true;
    }
    return false;
  }
  void callCreatePaymentLinks(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createPaymentLinks(
        headers: {
          'Authorization':
          'Basic ${base64encodedToken}',
        },
        onSuccess: (resp) {
          onCreatePaymentLinksSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreatePaymentLinksError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreatePaymentLinksSuccess(var response) {
    postPaymentLinksResp = PostPaymentLinksResp.fromJson(response);
  }

  void onCreatePaymentLinksError(var err) {
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