import 'controller/subscriptions_link_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/core/app_export.dart';
import 'package:razorpay_x_dhiwise/core/utils/validation_functions.dart';
import 'package:razorpay_x_dhiwise/widgets/custom_button.dart';
import 'package:razorpay_x_dhiwise/widgets/custom_checkbox.dart';
import 'package:razorpay_x_dhiwise/widgets/custom_text_form_field.dart';
import 'package:intl/intl.dart';

// ignore_for_file: must_be_immutable
class SubscriptionsLinkDetailsScreen
    extends GetWidget<SubscriptionsLinkDetailsController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray104,
            body: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Container(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              width: size.width,
                              decoration:
                              BoxDecoration(color: ColorConstant.gray900),
                              child: Padding(
                                  padding: getPadding(
                                      left: 24, top: 31, right: 199, bottom: 28),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              onTapArrowleft();
                                            },
                                            child: Padding(
                                                padding: getPadding(bottom: 3),
                                                child: CommonImageView(
                                                    svgPath:
                                                    ImageConstant.imgArrowleft,
                                                    height: getVerticalSize(16.00),
                                                    width:
                                                    getHorizontalSize(15.00)))),
                                        Padding(
                                            padding: getPadding(left: 24, top: 1),
                                            child: Text("msg_create_subscrip".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMulishRomanSemiBold18
                                                    .copyWith()))
                                      ]))),
                          Expanded(
                              child: SingleChildScrollView(
                                  padding: getPadding(top: 23),
                                  child: Container(
                                      margin: getMargin(bottom: 24),
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
                                                            .imgGroup292Gray400,
                                                        height:
                                                        getVerticalSize(24.00),
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
                                                            .center,
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
                                                          Row(
                                                              crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                              mainAxisSize:
                                                              MainAxisSize.max,
                                                              children: [
                                                                Padding(
                                                                    padding:
                                                                    getPadding(
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
                                                                    padding:
                                                                    getPadding(
                                                                        left:
                                                                        95,
                                                                        bottom:
                                                                        17),
                                                                    child: Text(
                                                                        "lbl_review"
                                                                            .tr,
                                                                        overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                        textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                        style: AppStyle
                                                                            .txtMulishRomanSemiBold16
                                                                            .copyWith()))
                                                              ])
                                                        ]))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 16,
                                                        top: 38,
                                                        right: 16),
                                                    child: Text(
                                                        "lbl_link_details".tr,
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
                                                    decoration:
                                                    AppDecoration.fillWhiteA700,
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
                                                          Padding(
                                                              padding: getPadding(
                                                                  left: 16,
                                                                  top: 26,
                                                                  right: 16),
                                                              child: Text(
                                                                  "msg_customer_contac"
                                                                      .tr,
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: AppStyle
                                                                      .txtMulishRomanSemiBold16
                                                                      .copyWith(
                                                                      height:
                                                                      1.00))),
                                                          Container(
                                                              height:
                                                              getVerticalSize(
                                                                  1.00),
                                                              width: size.width,
                                                              margin: getMargin(
                                                                  top: 17),
                                                              decoration: BoxDecoration(
                                                                  color:
                                                                  ColorConstant
                                                                      .gray300)),
                                                          Padding(
                                                              padding: getPadding(
                                                                  left: 16,
                                                                  top: 17,
                                                                  right: 16),
                                                              child: Text(
                                                                  "lbl_email_id".tr,
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: AppStyle
                                                                      .txtMulishRomanSemiBold16
                                                                      .copyWith(
                                                                      height:
                                                                      1.00))),
                                                          CustomTextFormField(
                                                              width: 396,
                                                              focusNode:
                                                              FocusNode(),
                                                              controller: controller
                                                                  .emailController,
                                                              hintText:
                                                              "msg_john_example_co"
                                                                  .tr,
                                                              margin: getMargin(
                                                                  left: 16,
                                                                  top: 10,
                                                                  right: 16),
                                                              alignment:
                                                              Alignment.center,
                                                              validator: (value) {
                                                                if (value == null ||
                                                                    (!isValidEmail(
                                                                        value,
                                                                        isRequired:
                                                                        true))) {
                                                                  return "Please enter valid email";
                                                                }
                                                                return null;
                                                              }),
                                                          Padding(
                                                              padding: getPadding(
                                                                  left: 16,
                                                                  top: 26,
                                                                  right: 16),
                                                              child: Text(
                                                                  "lbl_mobile_number"
                                                                      .tr,
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: AppStyle
                                                                      .txtMulishRomanSemiBold16
                                                                      .copyWith(
                                                                      height:
                                                                      1.00))),
                                                          CustomTextFormField(
                                                              width: 396,
                                                              focusNode:
                                                              FocusNode(),
                                                              controller: controller
                                                                  .mobileNoController,
                                                              hintText:
                                                              "lbl_91_1234567890"
                                                                  .tr,
                                                              margin: getMargin(
                                                                  left: 16,
                                                                  top: 10,
                                                                  right: 16),
                                                              variant:
                                                              TextFormFieldVariant
                                                                  .OutlineBluegray101,
                                                              shape:
                                                              TextFormFieldShape
                                                                  .RoundedBorder6,
                                                              validator: (value) {
                                                                if (value == null ||
                                                                    (!isValidPhone(
                                                                        value,
                                                                        isRequired:
                                                                        true))) {
                                                                  return "Please enter valid phone number";
                                                                }
                                                                return null;
                                                              },
                                                              fontStyle:
                                                              TextFormFieldFontStyle
                                                                  .MulishRomanMedium16,
                                                              alignment:
                                                              Alignment.center),
                                                          Obx(() => CustomCheckbox(
                                                              text:
                                                              "lbl_notify_customer"
                                                                  .tr,
                                                              iconSize: 16,
                                                              value: controller
                                                                  .checkbox.value,
                                                              padding: getPadding(
                                                                  left: 16,
                                                                  top: 25,
                                                                  right: 16,
                                                                  bottom: 24),
                                                              onChange: (value) {
                                                                controller.checkbox
                                                                    .value = value;
                                                              }))
                                                        ]))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    width: double.infinity,
                                                    margin: getMargin(top: 16),
                                                    decoration:
                                                    AppDecoration.fillWhiteA700,
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
                                                                  top: 28,
                                                                  right: 16),
                                                              child: RichText(
                                                                  text: TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                            text: "lbl_link_expiry2"
                                                                                .tr,
                                                                            style: TextStyle(
                                                                                color: ColorConstant
                                                                                    .bluegray800,
                                                                                fontSize: getFontSize(
                                                                                    16),
                                                                                fontFamily:
                                                                                'Mulish',
                                                                                fontWeight:
                                                                                FontWeight.w600,
                                                                                height: 1.00)),
                                                                        TextSpan(
                                                                            text: "lbl"
                                                                                .tr,
                                                                            style: TextStyle(
                                                                                color: ColorConstant
                                                                                    .red700,
                                                                                fontSize: getFontSize(
                                                                                    16),
                                                                                fontFamily:
                                                                                'Mulish',
                                                                                fontWeight:
                                                                                FontWeight.w600,
                                                                                height: 1.00))
                                                                      ]),
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left)),
                                                          Container(
                                                              height:
                                                              getVerticalSize(
                                                                  1.00),
                                                              width: size.width,
                                                              margin: getMargin(
                                                                  top: 15),
                                                              decoration: BoxDecoration(
                                                                  color:
                                                                  ColorConstant
                                                                      .gray300)),
                                                          Align(
                                                              alignment:
                                                              Alignment.center,
                                                              child: Padding(
                                                                  padding:
                                                                  getPadding(
                                                                      left: 16,
                                                                      top: 15,
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
                                                                        Container(
                                                                            margin: getMargin(
                                                                                top:
                                                                                2),
                                                                            child: Column(
                                                                                mainAxisSize:
                                                                                MainAxisSize.min,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                children: [
                                                                                  Padding(padding: getPadding(right: 10), child: Text("lbl_date".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMulishRomanSemiBold16.copyWith(height: 1.00))),
                                                                                  Obx(
                                                                                        ()=> InkWell(
                                                                                      onTap:controller.chooseDate,

                                                                                      child:
                                                                                            CustomTextFormField(
                                                                                                width: 190,
                                                                                                isEnabled: false,
                                                                                                focusNode:
                                                                                                FocusNode(),
                                                                                                hintText: DateFormat(
                                                                                                    "dd-MM-yyyy")
                                                                                                    .format(controller
                                                                                                    .selectedDate
                                                                                                    .value)
                                                                                                    .toString(),
                                                                                                    margin: getMargin(top: 10),

                                                                                                variant: TextFormFieldVariant
                                                                                                    .OutlineBluegray101,
                                                                                                shape:
                                                                                                TextFormFieldShape
                                                                                                    .RoundedBorder6,
                                                                                                fontStyle:
                                                                                                TextFormFieldFontStyle
                                                                                                    .MulishRomanMedium16,
                                                                                                alignment:
                                                                                                Alignment.center,
                                                                                                suffix: Container(margin: getMargin(left: 30, top: 12, right: 13, bottom: 12),
                                                                                                         child: CommonImageView(svgPath: ImageConstant.imgVector18X16)), suffixConstraints: BoxConstraints(minWidth: getHorizontalSize(16.00), minHeight: getVerticalSize(18.00))
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  // CustomTextFormField(width: 190, focusNode: FocusNode(), controller: controller.dateController, hintText: "lbl_30_06_2022".tr, margin: getMargin(top: 10), suffix: Container(margin: getMargin(left: 30, top: 12, right: 13, bottom: 12),
                                                                                  //     child: CommonImageView(svgPath: ImageConstant.imgVector18X16)), suffixConstraints: BoxConstraints(minWidth: getHorizontalSize(16.00), minHeight: getVerticalSize(18.00)))
                                                                                ])),
                                                                        // Container(
                                                                        //     margin: getMargin(
                                                                        //         top:
                                                                        //         2),
                                                                        //     child: Column(
                                                                        //         mainAxisSize:
                                                                        //         MainAxisSize.min,
                                                                        //         crossAxisAlignment: CrossAxisAlignment.start,
                                                                        //         mainAxisAlignment: MainAxisAlignment.start,
                                                                        //         children: [
                                                                        //           Padding(padding: getPadding(right: 10), child: Text("lbl_time".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMulishRomanSemiBold16.copyWith(height: 1.00))),
                                                                        //           CustomTextFormField(width: 190, focusNode: FocusNode(), controller: controller.timeController, hintText: "lbl_12_00_am".tr, margin: getMargin(top: 10), suffix: Container(margin: getMargin(left: 30, top: 13, right: 13, bottom: 13), child: CommonImageView(svgPath: ImageConstant.imgVector2)), suffixConstraints: BoxConstraints(minWidth: getHorizontalSize(16.00), minHeight: getVerticalSize(16.00)))
                                                                        //         ]))
                                                                      ]))),
                                                          Obx(() => CustomCheckbox(
                                                              text: "lbl_no_expiry"
                                                                  .tr,
                                                              iconSize: 16,
                                                              value: controller
                                                                  .checkbox1.value,
                                                              padding: getPadding(
                                                                  left: 16,
                                                                  top: 25,
                                                                  right: 16,
                                                                  bottom: 24),
                                                              onChange: (value) {
                                                                controller.checkbox1
                                                                    .value = value;
                                                              }))
                                                        ]))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    width: double.infinity,
                                                    margin: getMargin(top: 16),
                                                    decoration:
                                                    AppDecoration.fillWhiteA700,
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
                                                          Padding(
                                                              padding: getPadding(
                                                                  left: 16,
                                                                  top: 26,
                                                                  right: 16),
                                                              child: Text(
                                                                  "lbl_internal_note"
                                                                      .tr,
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: AppStyle
                                                                      .txtMulishRomanSemiBold16
                                                                      .copyWith(
                                                                      height:
                                                                      1.00))),
                                                          Align(
                                                              alignment:
                                                              Alignment.center,
                                                              child: Container(
                                                                  width: double
                                                                      .infinity,
                                                                  margin: getMargin(
                                                                      left: 16,
                                                                      top: 9,
                                                                      right: 16,
                                                                      bottom: 24),
                                                                  decoration: AppDecoration
                                                                      .outlineIndigo100
                                                                      .copyWith(
                                                                      borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder3),
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                      crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .end,
                                                                      mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                      children: [
                                                                        Align(
                                                                            alignment:
                                                                            Alignment.center,
                                                                            child: Container(
                                                                                height: getVerticalSize(74.00),
                                                                                width: getHorizontalSize(368.00),
                                                                                margin: getMargin(left: 16, top: 12, right: 12),
                                                                                child: Stack(alignment: Alignment.topCenter, children: [
                                                                                  Align(
                                                                                      alignment: Alignment.centerLeft,
                                                                                      child: Container(
                                                                                          margin: getMargin(top: 1),
                                                                                          child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                            CustomTextFormField(width: 320, focusNode: FocusNode(), controller: controller.paytestController, hintText: "lbl_pay_test".tr, variant: TextFormFieldVariant.edittext3, fontStyle: TextFormFieldFontStyle.MulishMediumBluegray901)
                                                                                          ]))),
                                                                                  Align(alignment: Alignment.topCenter, child: Padding(padding: getPadding(left: 289, bottom: 51), child: CommonImageView(imagePath: ImageConstant.imageNotFound, height: getSize(12.00), width: getSize(12.00)))),
                                                                                  Container(height: getVerticalSize(1.00), width: getHorizontalSize(368.00), margin: getMargin(top: 3, bottom: 3), decoration: BoxDecoration(color: ColorConstant.indigo100))
                                                                                ]))),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left:
                                                                                373,
                                                                                top:
                                                                                19,
                                                                                right:
                                                                                7,
                                                                                bottom:
                                                                                7),
                                                                            child: CommonImageView(
                                                                                svgPath:
                                                                                ImageConstant.imgGroup216,
                                                                                height: getSize(16.00),
                                                                                width: getSize(16.00)))
                                                                      ])))
                                                        ]))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 16,
                                                        top: 56,
                                                        right: 16),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          CustomButton(
                                                              width: 190,
                                                              text:
                                                              "lbl_previous".tr,
                                                              variant: ButtonVariant
                                                                  .OutlineGray300,
                                                              fontStyle:
                                                              ButtonFontStyle
                                                                  .GilroyMedium16,
                                                              onTap:
                                                              onTapBtnPrevious),
                                                          CustomButton(
                                                              width: 190,
                                                              text: "lbl_next".tr,
                                                              onTap: onTapNext)
                                                        ])))
                                          ]))))
                        ])))));
  }

  onTapArrowleft() {
    Get.back();
  }

  onTapBtnPrevious() {
    Get.toNamed(AppRoutes.subscriptionsPlanDetailsScreen);
  }

  onTapNext() {
    controller.saveToPrefs();
    if(_formKey.currentState!.validate()) {
      Get.toNamed(AppRoutes.subscriptionsReviewScreen);
    }

  }
}