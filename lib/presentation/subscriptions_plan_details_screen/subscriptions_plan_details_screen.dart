import 'package:razorpay_x_dhiwise/data/storage/storage_helper.dart';

import 'controller/subscriptions_plan_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/core/app_export.dart';
import 'package:razorpay_x_dhiwise/widgets/custom_button.dart';
import 'package:razorpay_x_dhiwise/widgets/custom_drop_down.dart';
import 'package:razorpay_x_dhiwise/widgets/custom_icon_button.dart';
import 'package:razorpay_x_dhiwise/widgets/custom_text_form_field.dart';
import 'package:razorpay_x_dhiwise/core/utils/validation_functions.dart';
import 'package:intl/intl.dart';

class SubscriptionsPlanDetailsScreen
    extends GetWidget<SubscriptionsPlanDetailsController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Rx<String> planPrice = "0.00".obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray104,
            body: Obx(
              ()=> Form(
                key: _formKey,
                child: Container(
                    width: size.width,
                    child: SingleChildScrollView(
                        child: Container(
                            margin: getMargin(bottom: 30),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      width: size.width,
                                      decoration: BoxDecoration(
                                          color: ColorConstant.gray900),
                                      child: Padding(
                                          padding: getPadding(
                                              left: 24,
                                              top: 31,
                                              right: 199,
                                              bottom: 28),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                GestureDetector(
                                                    onTap: () {
                                                      onTapImgArrowleft();
                                                    },
                                                    child: Padding(
                                                        padding:
                                                            getPadding(bottom: 3),
                                                        child: CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowleft,
                                                            height:
                                                                getVerticalSize(
                                                                    16.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    15.00)))),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 24, top: 1),
                                                    child: Text(
                                                        "msg_create_subscrip".tr,
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: AppStyle
                                                            .txtMulishRomanSemiBold18
                                                            .copyWith()))
                                              ]))),
                                  Container(
                                      width: double.infinity,
                                      margin: getMargin(top: 23),
                                      decoration: AppDecoration.fillGray104,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 16, right: 16),
                                                    child: Text(
                                                        "msg_provide_details".tr,
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: AppStyle
                                                            .txtMulishRomanMedium16
                                                            .copyWith(
                                                                height: 1.00)))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 16,
                                                        top: 28,
                                                        right: 16),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgGroup292,
                                                        height: getVerticalSize(
                                                            24.00),
                                                        width: getHorizontalSize(
                                                            360.00)))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 16,
                                                        top: 18,
                                                        right: 16),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                              padding: getPadding(
                                                                  top: 1),
                                                              child: Text(
                                                                  "lbl_plan_details"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtMulishRomanSemiBold16
                                                                      .copyWith())),
                                                          Padding(
                                                              padding: getPadding(
                                                                  top: 1),
                                                              child: Text(
                                                                  "lbl_link_details"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtMulishRomanSemiBold16
                                                                      .copyWith())),
                                                          Padding(
                                                              padding: getPadding(
                                                                  bottom: 17),
                                                              child: Text(
                                                                  "lbl_review".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtMulishRomanSemiBold16
                                                                      .copyWith()))
                                                        ]))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 16,
                                                        top: 38,
                                                        right: 16),
                                                    child: Text(
                                                        "lbl_plan_details".tr,
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: AppStyle
                                                            .txtMulishRomanBold18
                                                            .copyWith()))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    width: double.infinity,
                                                    margin: getMargin(top: 18),
                                                    decoration: AppDecoration
                                                        .fillWhiteA700,
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                              margin: getMargin(
                                                                  left: 16,
                                                                  top: 26,
                                                                  right: 16),
                                                              child: RichText(
                                                                  text: TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                            text: "lbl_select_plan2"
                                                                                .tr,
                                                                            style: TextStyle(
                                                                                color: ColorConstant.bluegray800,
                                                                                fontSize: getFontSize(16),
                                                                                fontFamily: 'Mulish',
                                                                                fontWeight: FontWeight.w600,
                                                                                height: 1.25)),
                                                                        TextSpan(
                                                                            text: "lbl"
                                                                                .tr,
                                                                            style: TextStyle(
                                                                                color: ColorConstant.red700,
                                                                                fontSize: getFontSize(16),
                                                                                fontFamily: 'Mulish',
                                                                                fontWeight: FontWeight.w600,
                                                                                height: 1.25))
                                                                      ]),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left)),
                                                          CustomDropDown(
                                                              width: 396,
                                                              focusNode:
                                                                  FocusNode(),
                                                              icon: Container(
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              30,
                                                                          right:
                                                                              17),
                                                                  child: CommonImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgArrowdownBlack901)),
                                                              hintText:
                                                                  "lbl_test_1".tr,
                                                              margin: getMargin(
                                                                  left: 16,
                                                                  top: 10,
                                                                  right: 16),
                                                              alignment: Alignment
                                                                  .center,
                                                              items: controller
                                                                  .subscriptionsPlanDetailsModelObj
                                                                  .value
                                                                  .dropdownItemList.value,
                                                              onChanged: (value) {
                                                                planPrice.value = "₹ " +
                                                                    (int.parse(value
                                                                                .price!) /
                                                                            100)
                                                                        .toString();
                                                                StorageHelper
                                                                    .savePlanName(
                                                                        "planName",
                                                                        value
                                                                            .title
                                                                            .toString());
                                                                StorageHelper
                                                                    .savePlan(
                                                                        "Plan_id",
                                                                        value.id
                                                                            .toString());
                                                                StorageHelper.saveAmount(
                                                                    "Amount",
                                                                    (int.parse(value
                                                                                .price!) /
                                                                            100)
                                                                        .toString());
                                                                controller
                                                                    .onSelected(
                                                                        value);
                                                              }),
                                                          Align(
                                                              alignment: Alignment
                                                                  .center,
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              16,
                                                                          top: 8,
                                                                          right:
                                                                              16),
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                top:
                                                                                    14,
                                                                                bottom:
                                                                                    13),
                                                                            child: Obx(() => Text(
                                                                                planPrice.value,
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtMulishRomanSemiBold16Bluegray500.copyWith(height: 1.00)))),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                top:
                                                                                    18,
                                                                                bottom:
                                                                                    17),
                                                                            child: CommonImageView(
                                                                                svgPath: ImageConstant.imgVector8X8,
                                                                                height: getSize(8.00),
                                                                                width: getSize(8.00))),
                                                                        CustomTextFormField(
                                                                            width:
                                                                                228,
                                                                            focusNode:
                                                                                FocusNode(),
                                                                            controller: controller
                                                                                .inputFieldController,
                                                                            validator:
                                                                                (value) {
                                                                              if (value == null ||
                                                                                  (!isNumeric(value, isRequired: true))) {
                                                                                return "Please enter valid number";
                                                                              }
                                                                              return null;
                                                                            },
                                                                            variant: TextFormFieldVariant
                                                                                .OutlineGray300,
                                                                            fontStyle:
                                                                                TextFormFieldFontStyle.MulishMedium),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                top:
                                                                                    16,
                                                                                bottom:
                                                                                    11),
                                                                            child: Text(
                                                                                "lbl_quantity".tr,
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtMulishRomanSemiBold16Bluegray500.copyWith(height: 1.00)))
                                                                      ]))),
                                                          Padding(
                                                              padding: getPadding(
                                                                  left: 16,
                                                                  top: 8,
                                                                  right: 16,
                                                                  bottom: 24),
                                                              child: Text(
                                                                  "msg_every_week_cust"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtMulishRomanSemiBold14
                                                                      .copyWith(
                                                                          height:
                                                                              1.00)))
                                                        ]))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    width: double.infinity,
                                                    margin: getMargin(top: 16),
                                                    decoration: AppDecoration
                                                        .fillWhiteA700,
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                              margin: getMargin(
                                                                  left: 16,
                                                                  top: 26,
                                                                  right: 16),
                                                              child: RichText(
                                                                  text: TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                            text: "lbl_start_date2"
                                                                                .tr,
                                                                            style: TextStyle(
                                                                                color: ColorConstant.bluegray800,
                                                                                fontSize: getFontSize(16),
                                                                                fontFamily: 'Mulish',
                                                                                fontWeight: FontWeight.w600,
                                                                                height: 1.25)),
                                                                        TextSpan(
                                                                            text: "lbl"
                                                                                .tr,
                                                                            style: TextStyle(
                                                                                color: ColorConstant.red700,
                                                                                fontSize: getFontSize(16),
                                                                                fontFamily: 'Mulish',
                                                                                fontWeight: FontWeight.w600,
                                                                                height: 1.25))
                                                                      ]),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left)),
                                                          Obx(
                                                            () => InkWell(
                                                              onTap: controller
                                                                  .chooseDate,
                                                              child: CustomTextFormField(
                                                                  width: 396,
                                                                  isEnabled:
                                                                      false,
                                                                  focusNode:
                                                                      FocusNode(),
                                                                  hintText: DateFormat("dd-MM-yyyy")
                                                                      .format(controller
                                                                          .selectedDate
                                                                          .value)
                                                                      .toString(),
                                                                  margin: getMargin(
                                                                      left: 16,
                                                                      top: 12,
                                                                      right: 16),
                                                                  variant: TextFormFieldVariant
                                                                      .OutlineBluegray101,
                                                                  shape: TextFormFieldShape
                                                                      .RoundedBorder6,
                                                                  fontStyle: TextFormFieldFontStyle
                                                                      .MulishRomanMedium16,
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  prefix: Container(
                                                                      margin: getMargin(
                                                                          left:
                                                                              13,
                                                                          top: 12,
                                                                          right:
                                                                              13,
                                                                          bottom:
                                                                              12),
                                                                      child: CommonImageView(
                                                                          svgPath:
                                                                              ImageConstant.imgVector18X16)),
                                                                  prefixConstraints: BoxConstraints(minWidth: getSize(18.00), minHeight: getSize(18.00))),
                                                            ),
                                                          ),
                                                          Padding(
                                                              padding: getPadding(
                                                                  left: 16,
                                                                  top: 16,
                                                                  right: 16,
                                                                  bottom: 24),
                                                              child: Text(
                                                                  "msg_date_from_which"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtMulishRomanSemiBold14
                                                                      .copyWith(
                                                                          height:
                                                                              1.00)))
                                                        ]))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    width: double.infinity,
                                                    margin: getMargin(top: 16),
                                                    decoration: AppDecoration
                                                        .fillWhiteA700,
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                              margin: getMargin(
                                                                  left: 16,
                                                                  top: 26,
                                                                  right: 16),
                                                              child: RichText(
                                                                  text: TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                            text: "lbl_total_count2"
                                                                                .tr,
                                                                            style: TextStyle(
                                                                                color: ColorConstant.bluegray800,
                                                                                fontSize: getFontSize(16),
                                                                                fontFamily: 'Mulish',
                                                                                fontWeight: FontWeight.w600,
                                                                                height: 1.25)),
                                                                        TextSpan(
                                                                            text: "lbl"
                                                                                .tr,
                                                                            style: TextStyle(
                                                                                color: ColorConstant.red700,
                                                                                fontSize: getFontSize(16),
                                                                                fontFamily: 'Mulish',
                                                                                fontWeight: FontWeight.w600,
                                                                                height: 1.25))
                                                                      ]),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left)),
                                                          CustomTextFormField(
                                                              width: 396,
                                                              focusNode:
                                                                  FocusNode(),
                                                              controller: controller
                                                                  .inputFieldTwoController,
                                                              margin: getMargin(
                                                                  left: 16,
                                                                  top: 14,
                                                                  right: 16),
                                                              validator: (value) {
                                                                 if (value ==
                                                                        null ||
                                                                    value
                                                                        .isEmpty ||
                                                                    (!isNumeric(
                                                                        value,
                                                                        isRequired:
                                                                            true))) {
                                                                  return "Please enter valid number";
                                                                }
                                                                return null;
                                                              },
                                                              variant:
                                                                  TextFormFieldVariant
                                                                      .OutlineGray300,
                                                              fontStyle:
                                                                  TextFormFieldFontStyle
                                                                      .MulishMedium,
                                                              textInputAction:
                                                                  TextInputAction
                                                                      .done,
                                                              alignment: Alignment
                                                                  .center),
                                                          Padding(
                                                              padding: getPadding(
                                                                  left: 16,
                                                                  top: 12,
                                                                  right: 16,
                                                                  bottom: 24),
                                                              child: Text(
                                                                  "msg_no_of_billing"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtMulishRomanSemiBold14
                                                                      .copyWith(
                                                                          height:
                                                                              1.00)))
                                                        ]))),
                                            CustomButton(
                                                width: 190,
                                                text: "lbl_next".tr,
                                                margin: getMargin(
                                                    left: 16, top: 22, right: 16),
                                                onTap: onTapBtnNext,
                                                alignment: Alignment.centerRight)
                                          ]))
                                ])))),
              ),
            )));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapBtnNext() {
    controller.saveToPrefs();
    if (_formKey.currentState!.validate()) {
      Get.toNamed(AppRoutes.subscriptionsLinkDetailsScreen);
    }
  }
}
