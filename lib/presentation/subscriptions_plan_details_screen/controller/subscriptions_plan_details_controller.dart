import 'package:razorpay_x_dhiwise/data/storage/storage_helper.dart';

import '/core/app_export.dart';
import 'package:razorpay_x_dhiwise/presentation/subscriptions_plan_details_screen/models/subscriptions_plan_details_model.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/data/models/plans/get_plans_resp.dart';
import 'package:razorpay_x_dhiwise/data/apiClient/api_client.dart';
import 'package:intl/intl.dart';

class SubscriptionsPlanDetailsController extends GetxController {
  TextEditingController inputFieldController = TextEditingController();

  TextEditingController inputFieldOneController = TextEditingController();

  TextEditingController inputFieldTwoController = TextEditingController();

  Rx<SubscriptionsPlanDetailsModel> subscriptionsPlanDetailsModelObj =
      SubscriptionsPlanDetailsModel().obs;

  SelectionPopupModel? selectedDropDownValue;
  var selectedDate = DateTime.now().obs;
  final dateFormat = DateFormat.yMMMEd();
  GetPlansResp getPlansResp = GetPlansResp();
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

  @override
  void onReady() {
    super.onReady();
    this.callFetchPlans(
      successCall: _onFetchPlansSuccess,
      errCall: _onFetchPlansError,
    );

  }

  saveToPrefs(){
    StorageHelper.saveQuantity("quantity", inputFieldController.text);
    StorageHelper.saveStartDate("start_at", (selectedDate.value.millisecondsSinceEpoch / 1000).toInt());
    StorageHelper.saveCount("total_count", inputFieldTwoController.text);
  }



  @override
  void onClose() {
    super.onClose();
    inputFieldController.dispose();
    inputFieldOneController.dispose();
    inputFieldTwoController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    subscriptionsPlanDetailsModelObj.value.dropdownItemList.value.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    subscriptionsPlanDetailsModelObj.value.dropdownItemList.refresh();
  }

  void callFetchPlans(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchPlans(
        headers: {
          'Content-type': 'application/json',
          'Authorization':
          'Basic ${base64encodedToken}',
        },
        onSuccess: (resp) {
          onFetchPlansSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchPlansError(err);
          if (errCall != null) {
            errCall();
          }
        });
  }

  void onFetchPlansSuccess(var response) {
    getPlansResp = GetPlansResp.fromJson(response);

    for(int i=0;i<getPlansResp.items!.length;i++) {
      var name = getPlansResp.items![i].item!.name.toString();
      var price = getPlansResp.items![i].item!.amount.toString();
      var planId = getPlansResp.items![i].id.toString();
      subscriptionsPlanDetailsModelObj.value.dropdownItemList.value.add(
        SelectionPopupModel(
            id: planId,
            title: name,
            price: price,
            isSelected: i==0? true: false),
      );
      subscriptionsPlanDetailsModelObj.value.dropdownItemList.refresh();
    }
  }

  void onFetchPlansError(var err) {
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

  void _onFetchPlansSuccess() {
    // display in drop down

  }
  void _onFetchPlansError() {}
}

