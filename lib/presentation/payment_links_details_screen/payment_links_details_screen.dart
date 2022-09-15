import 'controller/payment_links_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/core/app_export.dart';
import 'package:razorpay_x_dhiwise/widgets/custom_button.dart';
import 'package:razorpay_x_dhiwise/widgets/custom_text_form_field.dart';
import 'package:razorpay_x_dhiwise/data/models/cancel/post_cancel_req.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:razorpay_x_dhiwise/data/models/v1PaymentLinks/post_v1_payment_links_req.dart';

// ignore_for_file: must_be_immutable
class PaymentLinksDetailsScreen
    extends GetWidget<PaymentLinksDetailsController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray104,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Container(
                            margin: getMargin(bottom: 24),
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
                                              right: 174,
                                              bottom: 28),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                GestureDetector(
                                                    onTap: () {
                                                      onTapImgArrowleft();
                                                    },
                                                    child: Padding(
                                                        padding: getPadding(
                                                            bottom: 3),
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
                                                        "msg_payment_links_d"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtMulishRomanBold18
                                                            .copyWith()))
                                              ]))),
                                  Container(
                                      width: double.infinity,
                                      decoration: AppDecoration.fillGray104,
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
                                                              "lbl_link_amount"
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
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 16,
                                                                      top: 11,
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
                                                                                1,
                                                                            bottom:
                                                                                1),
                                                                        child: Obx(() => Text(
                                                                            controller
                                                                                .paymentLinksDetailsModelObj.value.priceTxt.value,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMulishRomanBold24.copyWith()))),
                                                                    Container(
                                                                        padding: getPadding(
                                                                            left:
                                                                                8,
                                                                            top:
                                                                                7,
                                                                            right:
                                                                                8,
                                                                            bottom:
                                                                                7),
                                                                        decoration: AppDecoration.txtOutlineBlue700.copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .txtCircleBorder13),
                                                                        child: Obx(() => Text(
                                                                            controller
                                                                                .paymentLinksDetailsModelObj.value.createdTxt.value,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMulishRomanSemiBold12.copyWith(height: 1.00))))
                                                                  ]))),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  396.00),
                                                          margin: getMargin(
                                                              left: 16,
                                                              top: 10,
                                                              right: 16),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .gray300)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 13,
                                                              right: 16),
                                                          child: Text(
                                                              "lbl_payment_link"
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
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 16,
                                                                      top: 9,
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
                                                                    GestureDetector(
                                                                        onTap:
                                                                            () {
                                                                          onTapTxtHttpsrzpio();
                                                                        },
                                                                        child: Padding(
                                                                            padding:
                                                                                getPadding(top: 4),
                                                                            child: Obx(() => Text(controller.paymentLinksDetailsModelObj.value.weburlTxt.value, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMulishRomanRegular18.copyWith(height: 1.00))))),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            bottom:
                                                                                2),
                                                                        child: CommonImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgDownload,
                                                                            height: getVerticalSize(22.00),
                                                                            width: getHorizontalSize(19.00)))
                                                                  ]))),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  396.00),
                                                          margin: getMargin(
                                                              left: 16,
                                                              top: 8,
                                                              right: 16,
                                                              bottom: 23),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .gray300))
                                                    ])),
                                            Container(
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
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 18,
                                                              right: 16),
                                                          child: Text(
                                                              "msg_customer_detail"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMulishRomanBold18Bluegray800
                                                                  .copyWith())),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 28,
                                                              right: 16),
                                                          child: Text(
                                                              "lbl_email_to".tr,
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
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 16,
                                                                      top: 12,
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
                                                                                4),
                                                                        child: Obx(() => Text(
                                                                            controller
                                                                                .paymentLinksDetailsModelObj.value.emailTxt.value,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMulishRomanSemiBold18.copyWith(height: 1.00)))),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            bottom:
                                                                                3),
                                                                        child: CommonImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgDownload,
                                                                            height: getVerticalSize(22.00),
                                                                            width: getHorizontalSize(19.00)))
                                                                  ]))),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  396.00),
                                                          margin: getMargin(
                                                              left: 16,
                                                              top: 8,
                                                              right: 16),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .gray300)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 11,
                                                              right: 16),
                                                          child: Text(
                                                              "lbl_sms_to".tr,
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
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 16,
                                                                      top: 12,
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
                                                                                2,
                                                                            bottom:
                                                                                1),
                                                                        child: Text(
                                                                            "lbl_91_1234567890"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMulishRomanSemiBold18.copyWith(height: 1.00))),
                                                                    CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgDownload,
                                                                        height: getVerticalSize(
                                                                            22.00),
                                                                        width: getHorizontalSize(
                                                                            19.00))
                                                                  ]))),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  396.00),
                                                          margin: getMargin(
                                                              left: 16,
                                                              top: 11,
                                                              right: 16,
                                                              bottom: 15),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .gray300))
                                                    ])),
                                            Container(
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
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMulishRomanBold18Bluegray800
                                                                  .copyWith())),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 30,
                                                              right: 16),
                                                          child: Text(
                                                              "lbl_expiry_date"
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
                                                              .timeController,
                                                          hintText:
                                                              "msg_25_may_2022_05"
                                                                  .tr,
                                                          margin: getMargin(
                                                              left: 16,
                                                              top: 15,
                                                              right: 16),
                                                          variant:
                                                              TextFormFieldVariant
                                                                  .UnderLineGray300,
                                                          padding:
                                                              TextFormFieldPadding
                                                                  .PaddingB8,
                                                          fontStyle:
                                                              TextFormFieldFontStyle
                                                                  .MulishRomanSemiBold18,
                                                          alignment:
                                                              Alignment.center),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 9,
                                                              right: 16),
                                                          child: Obx(() => Text(
                                                              controller
                                                                  .paymentLinksDetailsModelObj
                                                                  .value
                                                                  .inputLabelMFiveTxt
                                                                  .value,
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
                                                                          1.00)))),
                                                      CustomTextFormField(
                                                          width: 396,
                                                          focusNode:
                                                              FocusNode(),
                                                          controller: controller
                                                              .timeOneController,
                                                          hintText:
                                                              "msg_19_may_2022_06"
                                                                  .tr,
                                                          margin: getMargin(
                                                              left: 16,
                                                              top: 17,
                                                              right: 16,
                                                              bottom: 16),
                                                          variant:
                                                              TextFormFieldVariant
                                                                  .UnderLineGray300,
                                                          padding:
                                                              TextFormFieldPadding
                                                                  .PaddingB8,
                                                          fontStyle:
                                                              TextFormFieldFontStyle
                                                                  .MulishRomanSemiBold18,
                                                          textInputAction:
                                                              TextInputAction
                                                                  .done,
                                                          alignment:
                                                              Alignment.center)
                                                    ])),
                                            CustomButton(
                                                width: 396,
                                                text: "lbl_cancel_link".tr,
                                                margin: getMargin(
                                                    left: 16,
                                                    top: 38,
                                                    right: 16),
                                                variant: ButtonVariant
                                                    .OutlineGray300,
                                                shape: ButtonShape.Square,
                                                padding:
                                                    ButtonPadding.PaddingAll17,
                                                fontStyle: ButtonFontStyle
                                                    .GilroyMedium16,
                                                onTap: onTapBtnCancellink,
                                                alignment: Alignment.center),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 16,
                                                        top: 24,
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
                                                                  "lbl_duplicate_link"
                                                                      .tr,
                                                              variant: ButtonVariant
                                                                  .OutlineGray300,
                                                              shape: ButtonShape
                                                                  .Square,
                                                              padding: ButtonPadding
                                                                  .PaddingAll17,
                                                              fontStyle:
                                                                  ButtonFontStyle
                                                                      .GilroyMedium16,
                                                              onTap:
                                                                  onTapBtnDuplicatelink),
                                                          CustomButton(
                                                              width: 190,
                                                              text:
                                                                  "lbl_share_link"
                                                                      .tr,
                                                              variant:
                                                                  ButtonVariant
                                                                      .FillBlue700,
                                                              shape: ButtonShape
                                                                  .Square,
                                                              padding: ButtonPadding
                                                                  .PaddingAll17,
                                                              fontStyle:
                                                                  ButtonFontStyle
                                                                      .MulishRomanMedium18)
                                                        ])))
                                          ]))
                                ])))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapTxtHttpsrzpio() async {
    var url = 'https://rzp.io/i/zDUkgVHQ';
    if (!await launch(url)) {
      throw 'Could not launch https://rzp.io/i/zDUkgVHQ';
    }
  }

  void onTapBtnCancellink() {
    PostCancelReq postCancelReq = PostCancelReq();
    controller.callCreateCancel(
      postCancelReq.toJson(),
      successCall: _onCreateCancelSuccess,
      errCall: _onCreateCancelError,
    );
  }

  void _onCreateCancelSuccess() {
    Get.toNamed(AppRoutes.paymentLinksScreen);
  }

  void _onCreateCancelError() {
    Fluttertoast.showToast(
      msg: "Error While Canceling Payment Link.",
    );
  }

  void onTapBtnDuplicatelink() {
    PostV1PaymentLinksReq postV1PaymentLinksReq = PostV1PaymentLinksReq();
    controller.callCreateV1PaymentLinks(
      postV1PaymentLinksReq.toJson(),
      successCall: _onCreateV1PaymentLinksSuccess,
      errCall: _onCreateV1PaymentLinksError,
    );
  }

  void _onCreateV1PaymentLinksSuccess() {
    Get.toNamed(AppRoutes.paymentLinksScreen);
  }

  void _onCreateV1PaymentLinksError() {
    Fluttertoast.showToast(
      msg: "Error While Duplicating payment Link",
    );
  }
}
