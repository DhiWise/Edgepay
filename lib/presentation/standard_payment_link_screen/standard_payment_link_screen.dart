import 'controller/standard_payment_link_controller.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/core/app_export.dart';
import 'package:razorpay_x_dhiwise/core/utils/validation_functions.dart';
import 'package:razorpay_x_dhiwise/widgets/custom_button.dart';
import 'package:razorpay_x_dhiwise/widgets/custom_checkbox.dart';
import 'package:razorpay_x_dhiwise/widgets/custom_text_form_field.dart';
import 'package:razorpay_x_dhiwise/data/models/paymentLinks/post_payment_links_req.dart';

// ignore_for_file: must_be_immutable
class StandardPaymentLinkScreen
    extends GetWidget<StandardPaymentLinkController> {
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
                              height: getVerticalSize(263.00),
                              width: size.width,
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                            margin: getMargin(bottom: 10),
                                            decoration: AppDecoration.fillGray900,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment:
                                                      Alignment.centerLeft,
                                                      child: Container(
                                                          width: size.width,
                                                          margin: getMargin(
                                                              left: 24,
                                                              top: 31,
                                                              right: 24,
                                                              bottom: 59),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                              crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                              mainAxisSize:
                                                              MainAxisSize.max,
                                                              children: [
                                                                GestureDetector(
                                                                    onTap: () {
                                                                      onTapImgArrowleft();
                                                                    },
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            bottom:
                                                                            3),
                                                                        child: CommonImageView(
                                                                            svgPath:
                                                                            ImageConstant
                                                                                .imgArrowleft,
                                                                            height: getVerticalSize(
                                                                                16.00),
                                                                            width: getHorizontalSize(
                                                                                15.00)))),
                                                                Padding(
                                                                    padding:
                                                                    getPadding(
                                                                        left:
                                                                        24,
                                                                        top: 1),
                                                                    child: Text(
                                                                        "msg_standard_paymen"
                                                                            .tr,
                                                                        overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                        textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                        style: AppStyle
                                                                            .txtMulishRomanBold18
                                                                            .copyWith()))
                                                              ])))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                            height: getVerticalSize(183.00),
                                            width: size.width,
                                            margin: getMargin(top: 10),
                                            child: Stack(
                                                alignment: Alignment.topCenter,
                                                children: [
                                                  Align(
                                                      alignment:
                                                      Alignment.bottomLeft,
                                                      child: Container(
                                                          height: getVerticalSize(
                                                              152.00),
                                                          width: size.width,
                                                          margin:
                                                          getMargin(top: 10),
                                                          decoration: BoxDecoration(
                                                              color: ColorConstant
                                                                  .whiteA700))),
                                                  Align(
                                                      alignment:
                                                      Alignment.topCenter,
                                                      child: Container(
                                                          margin: getMargin(
                                                              left: 16,
                                                              right: 16,
                                                              bottom: 10),
                                                          child: Column(
                                                              mainAxisSize:
                                                              MainAxisSize.min,
                                                              crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                              children: [
                                                                Container(
                                                                    decoration: AppDecoration
                                                                        .outlineGray8002b
                                                                        .copyWith(
                                                                        borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder8),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
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
                                                                                  22,
                                                                                  bottom:
                                                                                  22),
                                                                              child: CommonImageView(
                                                                                  svgPath: ImageConstant.imgSettings,
                                                                                  height: getVerticalSize(17.00),
                                                                                  width: getHorizontalSize(13.00))),
                                                                          Padding(
                                                                              padding: getPadding(
                                                                                  left:
                                                                                  11,
                                                                                  top:
                                                                                  27,
                                                                                  bottom:
                                                                                  27),
                                                                              child: CommonImageView(
                                                                                  svgPath: ImageConstant.imgArrowdown,
                                                                                  height: getVerticalSize(6.00),
                                                                                  width: getHorizontalSize(10.00))),
                                                                          CustomTextFormField(
                                                                              width:
                                                                              316,
                                                                              focusNode:
                                                                              FocusNode(),
                                                                              controller: controller
                                                                                  .group272Controller,
                                                                              hintText: "100"
                                                                                  .tr,
                                                                              margin: getMargin(
                                                                                  left:
                                                                                  14,
                                                                                  top:
                                                                                  8,
                                                                                  right:
                                                                                  8,
                                                                                  bottom:
                                                                                  8),
                                                                              variant: TextFormFieldVariant
                                                                                  .FillBluegray50,
                                                                              padding: TextFormFieldPadding
                                                                                  .PaddingT11,
                                                                              fontStyle: TextFormFieldFontStyle
                                                                                  .MulishRomanBold24,
                                                                              validator:
                                                                                  (value) {
                                                                                if (value == null ||
                                                                                    (!isNumeric(value, isRequired: true))) {
                                                                                  return "Please enter valid number";
                                                                                }
                                                                                return null;
                                                                              })
                                                                        ])),
                                                                Container(
                                                                    margin:
                                                                    getMargin(
                                                                        top: 36,
                                                                        right:
                                                                        10),
                                                                    child: RichText(
                                                                        text: TextSpan(
                                                                            children: [
                                                                              TextSpan(
                                                                                  text: "lbl_payment_for2".tr,
                                                                                  style: TextStyle(color: ColorConstant.bluegray500, fontSize: getFontSize(16), fontFamily: 'Mulish', fontWeight: FontWeight.w600, height: 1.25)),
                                                                              TextSpan(
                                                                                  text: "lbl".tr,
                                                                                  style: TextStyle(color: ColorConstant.red700, fontSize: getFontSize(16), fontFamily: 'Mulish', fontWeight: FontWeight.w600, height: 1.25))
                                                                            ]),
                                                                        textAlign:
                                                                        TextAlign
                                                                            .left)),
                                                                CustomTextFormField(
                                                                    width: 396,
                                                                    focusNode:
                                                                    FocusNode(),
                                                                    controller:
                                                                    controller
                                                                        .inputFieldController,
                                                                    hintText:
                                                                    "For what you are paying?"
                                                                        .tr,

                                                                    margin:
                                                                    getMargin(
                                                                        top: 1),
                                                                    validator:
                                                                        (value) {
                                                                      if (value ==
                                                                          null ||
                                                                          (!isText(
                                                                              value,
                                                                              isRequired:
                                                                              true))) {
                                                                        return "Please enter valid text";
                                                                      }
                                                                      return null;
                                                                    })
                                                              ])))
                                                ])))
                                  ])),
                          Expanded(
                              child: SingleChildScrollView(
                                  padding: getPadding(top: 16),
                                  child: Container(
                                      margin: getMargin(bottom: 14),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Container(
                                                width: double.infinity,
                                                decoration:
                                                AppDecoration.fillWhiteA700,
                                                child: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 18,
                                                              right: 16),
                                                          child: Text(
                                                              "msg_add_customer_de"
                                                                  .tr,
                                                              overflow: TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign.left,
                                                              style: AppStyle
                                                                  .txtMulishRomanBold18Bluegray800
                                                                  .copyWith())),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 28,
                                                              right: 16),
                                                          child: Text(
                                                              "lbl_email_id".tr,
                                                              overflow: TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign.left,
                                                              style: AppStyle
                                                                  .txtMulishRomanSemiBold16
                                                                  .copyWith(
                                                                  height:
                                                                  1.00))),
                                                      CustomTextFormField(
                                                          width: 396,
                                                          focusNode: FocusNode(),
                                                          controller: controller
                                                              .emailController,
                                                          hintText:
                                                          "Enter Email"
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
                                                      Obx(() => CustomCheckbox(
                                                          text:
                                                          "msg_notify_via_emai"
                                                              .tr,
                                                          iconSize: 16,
                                                          value: controller
                                                              .checkbox.value,
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 9,
                                                              right: 16),
                                                          onChange: (value) {
                                                            controller.checkbox
                                                                .value = value;
                                                          })),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 26,
                                                              right: 16),
                                                          child: Text(
                                                              "lbl_mobile_number"
                                                                  .tr,
                                                              overflow: TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign.left,
                                                              style: AppStyle
                                                                  .txtMulishRomanSemiBold16
                                                                  .copyWith(
                                                                  height:
                                                                  1.00))),
                                                      CustomTextFormField(
                                                          width: 396,
                                                          focusNode: FocusNode(),
                                                          controller: controller
                                                              .mobileNoController,
                                                          hintText:
                                                          "Enter Mobile number"
                                                              .tr,
                                                          margin: getMargin(
                                                              left: 16,
                                                              top: 10,
                                                              right: 16),
                                                          variant:
                                                          TextFormFieldVariant
                                                              .OutlineBluegray101,
                                                          fontStyle:
                                                          TextFormFieldFontStyle
                                                              .MulishRomanMedium16Bluegray901,
                                                          alignment:
                                                          Alignment.center,
                                                          validator: (value) {
                                                            if (value == null ||
                                                                (!isValidPhone(
                                                                    value,
                                                                    isRequired:
                                                                    true))) {
                                                              return "Please enter valid phone number";
                                                            }
                                                            return null;
                                                          }),
                                                      Obx(() => CustomCheckbox(
                                                          text: "lbl_notify_via_sms"
                                                              .tr,
                                                          iconSize: 16,
                                                          value: controller
                                                              .checkbox1.value,
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 9,
                                                              right: 16,
                                                              bottom: 16),
                                                          onChange: (value) {
                                                            controller.checkbox1
                                                                .value = value;
                                                          }))
                                                    ])),
                                            Container(
                                                width: double.infinity,
                                                margin: getMargin(top: 16),
                                                decoration:
                                                AppDecoration.fillWhiteA700,
                                                child: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 18,
                                                              right: 16),
                                                          child: Text(
                                                              "msg_additional_deta"
                                                                  .tr,
                                                              overflow: TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign.left,
                                                              style: AppStyle
                                                                  .txtMulishRomanBold18Bluegray800
                                                                  .copyWith())),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 28,
                                                              right: 16),
                                                          child: Text(
                                                              "lbl_referece_id".tr,
                                                              overflow: TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign.left,
                                                              style: AppStyle
                                                                  .txtMulishRomanSemiBold16
                                                                  .copyWith(
                                                                  height:
                                                                  1.00))),
                                                      CustomTextFormField(
                                                          width: 396,
                                                          focusNode: FocusNode(),
                                                          controller: controller
                                                              .inputFieldOneController,
                                                          hintText:
                                                          "Enter Reference Id (Optional)".tr,
                                                          margin: getMargin(
                                                              left: 16,
                                                              top: 10,
                                                              right: 16),
                                                          alignment:
                                                          Alignment.center),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 28,
                                                              right: 16),
                                                          child: Text(
                                                              "lbl_link_expiry2".tr,
                                                              overflow: TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign.left,
                                                              style: AppStyle
                                                                  .txtMulishRomanSemiBold16
                                                                  .copyWith(
                                                                  height:
                                                                  1.00))),
                                                      Align(
                                                          alignment:
                                                          Alignment.center,
                                                          child: Container(
                                                              margin: getMargin(
                                                                  left: 16,
                                                                  top: 8,
                                                                  right: 16),
                                                              decoration: AppDecoration
                                                                  .outlineBluegray101
                                                                  .copyWith(
                                                                  borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder8),
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
                                                                    Obx(
                                                                      ()=> Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                              12,
                                                                              top: 14,
                                                                              bottom:
                                                                              13),
                                                                          child: Text(
                                                                              controller.dateFormat.format(controller.selectedDate.value),
                                                                              overflow:
                                                                              TextOverflow
                                                                                  .ellipsis,
                                                                              textAlign:
                                                                              TextAlign
                                                                                  .left,
                                                                              style: AppStyle
                                                                                  .txtMulishRomanMedium16Bluegray300
                                                                                  .copyWith(height: 1.00))),
                                                                    ),
                                                                    InkWell(
                                                                      onTap: controller.chooseDate,
                                                                      child: Padding(
                                                                          padding: getPadding(
                                                                              top: 12,
                                                                              right:
                                                                              13,
                                                                              bottom:
                                                                              12),
                                                                          child: CommonImageView(
                                                                              svgPath:
                                                                              ImageConstant
                                                                                  .imgCalendar,
                                                                              height: getVerticalSize(
                                                                                  18.00),
                                                                              width: getHorizontalSize(
                                                                                  16.00))),
                                                                    )
                                                                  ]))),
                                                      Obx(() => CustomCheckbox(
                                                          text: "lbl_no_expiry".tr,
                                                          iconSize: 16,
                                                          value: controller
                                                              .checkbox2.value,
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 9,
                                                              right: 16),
                                                          onChange: (value) {
                                                            controller.checkbox2
                                                                .value = value;
                                                          })),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 28,
                                                              right: 16),
                                                          child: Text(
                                                              "lbl_partial_payment"
                                                                  .tr,
                                                              overflow: TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign.left,
                                                              style: AppStyle
                                                                  .txtMulishRomanSemiBold16
                                                                  .copyWith(
                                                                  height:
                                                                  1.00))),
                                                      Obx(() => CustomCheckbox(
                                                          text: "msg_enable_partial"
                                                              .tr,
                                                          iconSize: 16,
                                                          value: controller
                                                              .checkbox3.value,
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 9,
                                                              right: 16),
                                                          onChange: (value) {
                                                            controller.checkbox3
                                                                .value = value;
                                                          })),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 26,
                                                              right: 16),
                                                          child: Text("lbl_note".tr,
                                                              overflow: TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign.left,
                                                              style: AppStyle
                                                                  .txtMulishRomanSemiBold16
                                                                  .copyWith(
                                                                  height:
                                                                  1.00))),
                                                      Align(
                                                          alignment:
                                                          Alignment.center,
                                                          child: Container(
                                                              width:
                                                              double.infinity,
                                                              margin: getMargin(
                                                                  left: 16,
                                                                  top: 9,
                                                                  right: 16),
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
                                                                        Alignment
                                                                            .center,
                                                                        child: Container(
                                                                            height: getVerticalSize(74.00),
                                                                            width: getHorizontalSize(368.00),
                                                                            margin: getMargin(left: 16, top: 12, right: 12),
                                                                            child: Stack(alignment: Alignment.centerLeft, children: [
                                                                              CustomTextFormField(
                                                                                  width: 362,
                                                                                  focusNode: FocusNode(),
                                                                                  controller: controller.paytestController,
                                                                                  hintText: "Add note".tr,
                                                                                  fontStyle: TextFormFieldFontStyle.MulishRomanMedium8,
                                                                                  textInputAction: TextInputAction.done,
                                                                                  alignment: Alignment.centerLeft),
                                                                              // Container(
                                                                              //     height: getVerticalSize(1.00),
                                                                              //     width: getHorizontalSize(368.00),
                                                                              //     margin: getMargin(top: 36, bottom: 36),
                                                                              //     decoration: BoxDecoration(color: ColorConstant.indigo100))
                                                                            ]))),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                            373,
                                                                            top: 19,
                                                                            right:
                                                                            7,
                                                                            bottom:
                                                                            7),
                                                                        child: CommonImageView(
                                                                            svgPath:
                                                                            ImageConstant
                                                                                .imgEdit,
                                                                            height: getSize(
                                                                                16.00),
                                                                            width: getSize(
                                                                                16.00)))
                                                                  ]))),

                                                    ])),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 16,
                                                        top: 39,
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
                                                              text: "lbl_cancel".tr,
                                                              onTap:
                                                              onTapBtnCancel),
                                                          CustomButton(
                                                              width: 190,
                                                              text:
                                                              "lbl_create_link"
                                                                  .tr,
                                                              variant: ButtonVariant
                                                                  .FillBlue700,
                                                              fontStyle: ButtonFontStyle
                                                                  .MulishRomanMedium18,
                                                              onTap:
                                                              onTapBtnCreatelink)
                                                        ])))
                                          ]))))
                        ])))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapBtnCancel() {
// TODO: implement Actions
    Get.back();
  }

  void onTapBtnCreatelink() {
    _formKey.currentState!.validate();
    _formKey.currentState!.validate();
    PostPaymentLinksReq postPaymentLinksReq = PostPaymentLinksReq(
    currency: "INR",
      amount: int.parse(controller.group272Controller.text)*100,
      acceptPartial: controller.checkbox3.value,
      expireBy : controller.selectedDate.value.millisecondsSinceEpoch ,
      // reminderEnable: controller.reminder_enable.value,
      notify: Notify(
        sms: controller.checkbox1.value,
        email: controller.checkbox.value,
      ),
      customer: Customer(
        email: controller.emailController.text,
        contact: controller.mobileNoController.text,
      ),
      description: controller.inputFieldController.text,
      referenceId: controller.inputFieldOneController.text,
    );
    controller.callCreatePaymentLinks(
      postPaymentLinksReq.toJson(),
      successCall: _onCreatePaymentLinksSuccess,
      errCall: _onCreatePaymentLinksError,
    );
  }

  void _onCreatePaymentLinksSuccess() {
// TODO: implement Actions
    Get.toNamed(AppRoutes.paymentLinksScreen);

  }
  void _onCreatePaymentLinksError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Error ",
        middleText: "Something bad happened while creating ");
  }
}