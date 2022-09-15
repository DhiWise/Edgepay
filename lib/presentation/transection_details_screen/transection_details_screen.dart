import 'controller/transection_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/core/app_export.dart';
import 'package:razorpay_x_dhiwise/widgets/custom_text_form_field.dart';
import 'package:flutter/services.dart';

class TransectionDetailsScreen extends GetWidget<TransectionDetailsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray104,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                      Container(
                          width: size.width,
                          decoration:
                              BoxDecoration(color: ColorConstant.gray900),
                          child: Padding(
                              padding: getPadding(
                                  left: 24, top: 30, right: 200, bottom: 31),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          onTapImgArrowleft();
                                        },
                                        child: Padding(
                                            padding:
                                                getPadding(top: 1, bottom: 1),
                                            child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowleft,
                                                height: getVerticalSize(16.00),
                                                width:
                                                    getHorizontalSize(15.00)))),
                                    Padding(
                                        padding: getPadding(left: 24),
                                        child: Text("msg_transection_det".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtMulishRomanBold18
                                                .copyWith()))
                                  ]))),
                      Container(
                          width: double.infinity,
                          decoration: AppDecoration.fillWhiteA700,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 26, right: 16),
                                    child: Text("lbl_amount".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMulishRomanSemiBold16
                                            .copyWith(height: 1.00))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 16, top: 11, right: 16),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 1, bottom: 1),
                                                  child: Obx(() => Text(
                                                      controller
                                                          .transectionDetailsModelObj
                                                          .value
                                                          .priceTxt
                                                          .value,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMulishRomanBold24
                                                          .copyWith()))),
                                              Container(
                                                  padding: getPadding(
                                                      left: 8,
                                                      top: 7,
                                                      right: 8,
                                                      bottom: 7),
                                                  decoration: AppDecoration
                                                      .txtOutlineBlue700
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtCircleBorder13),
                                                  child: Obx(() => Text(
                                                      controller
                                                          .transectionDetailsModelObj
                                                          .value
                                                          .status
                                                          .value,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMulishRomanSemiBold12
                                                          .copyWith(
                                                              height: 1.00))))
                                            ]))),

                              ])),
                      Container(
                          width: double.infinity,
                          margin: getMargin(top: 16),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 18, right: 16),
                                    child: Text("msg_customer_detail".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMulishRomanBold18Bluegray800
                                            .copyWith())),
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 28, right: 16),
                                    child: Text("lbl_email_to".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMulishRomanSemiBold16
                                            .copyWith(height: 1.00))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 16, top: 12, right: 16),
                                        child:Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                    padding: getPadding(top: 4),
                                                    child: Obx(
                                                      (){
                                                        return Text(
                                                          controller
                                                              .transectionDetailsModelObj
                                                              .value
                                                              .emailTxt
                                                              .value,
                                                          overflow:
                                                              TextOverflow.ellipsis,
                                                          textAlign: TextAlign.left,
                                                          style: AppStyle
                                                              .txtMulishRomanBold24
                                                              .copyWith(
                                                                  height: 1.00));},
                                                    )),
                                                InkWell(
                                                  onTap: () {
                                                    Clipboard.setData(ClipboardData(text: controller
                                                        .transectionDetailsModelObj
                                                        .value
                                                        .emailTxt
                                                        .value));
                                                  },
                                                  child: Padding(
                                                      padding:
                                                          getPadding(bottom: 3),
                                                      child: CommonImageView(

                                                          svgPath: ImageConstant
                                                              .imgDownload,
                                                          height: getVerticalSize(
                                                              22.00),
                                                          width: getHorizontalSize(
                                                              19.00))),
                                                )
                                              ]),
                                        ),),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(396.00),
                                    margin:
                                        getMargin(left: 16, top: 8, right: 16),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray300)),
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 11, right: 16),
                                    child: Text("lbl_sms_to".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMulishRomanSemiBold16
                                            .copyWith(height: 1.00))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 16, top: 12, right: 16),
                                        child: Obx(
                                          ()=> Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        top: 2, bottom: 1),
                                                    child: Text(
                                                        controller
                                                            .transectionDetailsModelObj
                                                            .value
                                                            .mobileNoTxt
                                                            .value,
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: AppStyle
                                                            .txtMulishRomanBold24
                                                            .copyWith(
                                                                height: 1.00))),
                                                InkWell(
                                                  onTap: () {
                                                    Clipboard.setData(ClipboardData(text: controller
                                                        .transectionDetailsModelObj
                                                        .value
                                                        .mobileNoTxt
                                                        .value));
                                                  },
                                                  child: CommonImageView(
                                                      svgPath:
                                                          ImageConstant.imgDownload,
                                                      height:
                                                          getVerticalSize(22.00),
                                                      width:
                                                          getHorizontalSize(19.00)),
                                                )
                                              ]),
                                        ))),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(396.00),
                                    margin: getMargin(
                                        left: 16,
                                        top: 11,
                                        right: 16,
                                        bottom: 15),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray300))
                              ])),
                      Container(
                          width: double.infinity,
                          margin: getMargin(top: 16, bottom: 20),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(396.00),
                                    margin:
                                        getMargin(left: 16, top: 7, right: 16),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray300)),
                                Padding(
                                    padding:
                                        getPadding(left: 16, top: 9, right: 16),
                                    child: Text("lbl_created_on".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMulishRomanSemiBold16
                                            .copyWith(height: 1.00))),
                                Padding(
                                    padding: getPadding(
                                      left : 20,
                                        top: 2, bottom: 1),

                                    child: Obx(() => Text(
                                        controller
                                            .transectionDetailsModelObj
                                            .value
                                            .createdTxt
                                            .value,
                                        overflow:
                                        TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMulishRomanBold24
                                            .copyWith(
                                            height: 1.00)))),

                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(396.00),
                                    margin: getMargin(
                                        left: 16,
                                        top: 7,
                                        right: 16,
                                        bottom: 15),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray300))
                              ]))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
