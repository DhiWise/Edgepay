import '/core/app_export.dart';
import 'package:razorpay_x_dhiwise/presentation/subscriptions_link_details_screen/models/subscriptions_link_details_model.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/data/storage/storage_helper.dart';
import 'package:intl/intl.dart';

class SubscriptionsLinkDetailsController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController mobileNoController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController timeController = TextEditingController();

  TextEditingController paytestController = TextEditingController();
  TextEditingController paytestController1 = TextEditingController();

  Rx<SubscriptionsLinkDetailsModel> subscriptionsLinkDetailsModelObj =
      SubscriptionsLinkDetailsModel().obs;

  RxBool checkbox = false.obs;

  RxBool checkbox1 = false.obs;
  var selectedDate = DateTime.now().obs;
  final dateFormat = DateFormat.yMMMEd();

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
       );
    if (pickedDate != null && pickedDate != selectedDate.value) {
      selectedDate.value = pickedDate;

    }
  }
  bool disableDate(DateTime day) {
    if ((day.isAfter(DateTime.now().subtract(Duration(days: 1))) &&
        day.isBefore(DateTime.now().add(Duration(days: 30))))) {
      return true;
    }
    return false;
  }

  saveToPrefs(){
    StorageHelper.saveCustomerNotify("customer_notify", checkbox.value);
    StorageHelper.saveMobile("notify_phone", mobileNoController.text.toString());
    StorageHelper.saveEmail("notify_email", emailController.text.toString());
    StorageHelper.saveExpireDate("expire_by", (selectedDate.value.millisecondsSinceEpoch / 1000).toInt());
    StorageHelper.saveNoExpiry("noExpiry", checkbox1.value);
    StorageHelper.saveNotes("notes", paytestController.value.toString());
  }


  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    mobileNoController.dispose();
    dateController.dispose();
    timeController.dispose();
    paytestController.dispose();
    paytestController1.dispose();
  }
}