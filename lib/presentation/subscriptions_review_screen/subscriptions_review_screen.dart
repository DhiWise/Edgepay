import '../../data/storage/storage_helper.dart';
import 'controller/subscriptions_review_controller.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/core/app_export.dart';
import 'package:razorpay_x_dhiwise/widgets/custom_button.dart';
import 'package:razorpay_x_dhiwise/data/models/subscriptions/post_subscriptions_req.dart';

class SubscriptionsReviewScreen
    extends GetWidget<SubscriptionsReviewController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray104,
            body: Obx(
              ()=> Container(
                  width: size.width,
                  child: SingleChildScrollView(
                      child: Container(
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        width: size.width,
                                        decoration:
                                        BoxDecoration(color: ColorConstant.gray900),
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
                                                        onTapArrowleft();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(bottom: 3),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgArrowleft,
                                                              height:
                                                              getVerticalSize(16.00),
                                                              width: getHorizontalSize(
                                                                  15.00)))),
                                                  Padding(
                                                      padding:
                                                      getPadding(left: 24, top: 1),
                                                      child: Text(
                                                          "msg_create_subscrip".tr,
                                                          overflow: TextOverflow.ellipsis,
                                                          textAlign: TextAlign.left,
                                                          style: AppStyle
                                                              .txtMulishRomanSemiBold18
                                                              .copyWith()))
                                                ])))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 16, top: 23, right: 16),
                                        child: Text("msg_provide_details".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtMulishRomanMedium16
                                                .copyWith(height: 1.00)))),
                                Padding(
                                    padding: getPadding(left: 16, top: 28, right: 16),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgGroup292Gray40024X360,
                                        height: getVerticalSize(24.00),
                                        width: getHorizontalSize(360.00))),
                                Padding(
                                    padding: getPadding(left: 16, top: 16, right: 16),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 4),
                                              child: Text("lbl_plan_details".tr,
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtMulishRomanSemiBold16
                                                      .copyWith())),
                                          Padding(
                                              padding: getPadding(bottom: 4),
                                              child: Row(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    Text("lbl_link_details".tr,
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: AppStyle
                                                            .txtMulishRomanSemiBold16
                                                            .copyWith()),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 97, top: 2, bottom: 13),
                                                        child: Text("lbl_review".tr,
                                                            overflow:
                                                            TextOverflow.ellipsis,
                                                            textAlign: TextAlign.left,
                                                            style: AppStyle
                                                                .txtMulishRomanSemiBold16
                                                                .copyWith()))
                                                  ]))
                                        ])),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 16, top: 38, right: 16),
                                        child: Text("lbl_review".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtMulishRomanBold18
                                                .copyWith()))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        width: double.infinity,
                                        margin: getMargin(top: 18),
                                        decoration: AppDecoration.fillWhiteA700,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 16, top: 26, right: 16),
                                                  child: Text("lbl_plan".tr,
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMulishRomanSemiBold16
                                                          .copyWith(height: 1.00))),
                                              Container(
                                                  height: getVerticalSize(1.00),
                                                  width: size.width,
                                                  margin: getMargin(top: 17),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant.gray300)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 16, top: 17, right: 16),
                                                  child: Obx(
                                                    () => Text( controller.subscriptionsReviewModelObj.value.planName.value ?? "",
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: AppStyle
                                                            .txtMulishRomanSemiBold16
                                                            .copyWith(height: 1.00)),
                                                  )),

                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 15,
                                                          right: 16,
                                                          bottom: 24),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment.start,
                                                          mainAxisSize: MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding: getPadding(
                                                                    bottom: 80),
                                                                child: CommonImageView(
                                                                    svgPath: ImageConstant
                                                                        .imgGroup298,
                                                                    height:
                                                                    getVerticalSize(
                                                                        170.00),
                                                                    width:
                                                                    getHorizontalSize(
                                                                        20.00))),
                                                            Container(
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
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top: 4,
                                                                              right: 10),
                                                                          child: Text(
                                                                              "lbl_first_payment"
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
                                                                          margin: getMargin(
                                                                              top: 27,
                                                                              right: 10),
                                                                          child: RichText(
                                                                              text: TextSpan(
                                                                                  children: [
                                                                                    TextSpan(
                                                                                        text: "msg_authorization_p2"
                                                                                            .tr,
                                                                                        style: TextStyle(
                                                                                            color: ColorConstant.bluegray800,
                                                                                            fontSize: getFontSize(16),
                                                                                            fontFamily: 'Mulish',
                                                                                            fontWeight: FontWeight.w600,
                                                                                            height: 1.00)),
                                                                                    TextSpan(
                                                                                        text: "₹ " + controller.subscriptionsReviewModelObj.value.amount.toString(),
                                                                                        style: TextStyle(
                                                                                            color: ColorConstant.blue700,
                                                                                            fontSize: getFontSize(16),
                                                                                            fontFamily: 'Mulish',
                                                                                            fontWeight: FontWeight.w700,
                                                                                            height: 1.00))
                                                                                  ]),
                                                                              textAlign:
                                                                              TextAlign
                                                                                  .left)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top: 20,
                                                                              right: 10),
                                                                          child: Row(
                                                                              mainAxisAlignment:
                                                                              MainAxisAlignment
                                                                                  .start,
                                                                              crossAxisAlignment:
                                                                              CrossAxisAlignment
                                                                                  .center,
                                                                              mainAxisSize:
                                                                              MainAxisSize
                                                                                  .max,
                                                                              children: [
                                                                                Text(
                                                                                    "msg_subscription_am2"
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
                                                                                        height: 1.00)),
                                                                                Padding(
                                                                                    padding: getPadding(
                                                                                        left:
                                                                                        6,
                                                                                        top:
                                                                                        1),
                                                                                    child: Text(
                                                                                        "${controller.subscriptionsReviewModelObj.value.amount} x ${controller.subscriptionsReviewModelObj.value.quantity} (quantity)",
                                                                                        overflow: TextOverflow
                                                                                            .ellipsis,
                                                                                        textAlign: TextAlign
                                                                                            .left,
                                                                                        style: AppStyle
                                                                                            .txtMulishRomanBold16
                                                                                            .copyWith(height: 1.00)))
                                                                              ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top: 54,
                                                                              right: 10),
                                                                          child: Text(
                                                                              "msg_every_week_afte"
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
                                                                          margin: getMargin(
                                                                              top: 28,
                                                                              right: 10),
                                                                          child: RichText(
                                                                              text: TextSpan(
                                                                                  children: [
                                                                                    TextSpan(
                                                                                        text: "msg_recurring_payme2"
                                                                                            .tr,
                                                                                        style: TextStyle(
                                                                                            color: ColorConstant.bluegray800,
                                                                                            fontSize: getFontSize(16),
                                                                                            fontFamily: 'Mulish',
                                                                                            fontWeight: FontWeight.w600,
                                                                                            height: 1.00)),
                                                                                    TextSpan(
                                                                                        text: controller.subscriptionsReviewModelObj.value.amount.toString(),
                                                                                        style: TextStyle(
                                                                                            color: ColorConstant.blue700,
                                                                                            fontSize: getFontSize(16),
                                                                                            fontFamily: 'Mulish',
                                                                                            fontWeight: FontWeight.w700,
                                                                                            height: 1.00))
                                                                                  ]),
                                                                              textAlign:
                                                                              TextAlign
                                                                                  .left)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top: 18,
                                                                              right: 10),
                                                                          child: Row(
                                                                              mainAxisAlignment:
                                                                              MainAxisAlignment
                                                                                  .start,
                                                                              crossAxisAlignment:
                                                                              CrossAxisAlignment
                                                                                  .center,
                                                                              mainAxisSize:
                                                                              MainAxisSize
                                                                                  .min,
                                                                              children: [
                                                                                Padding(
                                                                                    padding: getPadding(
                                                                                        top:
                                                                                        1),
                                                                                    child: Text(
                                                                                        "lbl_no_of_cycles2"
                                                                                            .tr,
                                                                                        overflow: TextOverflow
                                                                                            .ellipsis,
                                                                                        textAlign: TextAlign
                                                                                            .left,
                                                                                        style: AppStyle
                                                                                            .txtMulishRomanSemiBold16
                                                                                            .copyWith(height: 1.00))),
                                                                                Padding(
                                                                                    padding: getPadding(
                                                                                        left:
                                                                                        4,
                                                                                        bottom:
                                                                                        1),
                                                                                    child: Text(
                                                                                        controller.subscriptionsReviewModelObj.value.totalCount.toString(),
                                                                                        overflow: TextOverflow
                                                                                            .ellipsis,
                                                                                        textAlign: TextAlign
                                                                                            .left,
                                                                                        style: AppStyle
                                                                                            .txtMulishRomanBold16
                                                                                            .copyWith(height: 1.00)))
                                                                              ]))
                                                                    ]))
                                                          ])))
                                            ]))),
                                CustomButton(
                                    width: 396,
                                    text: "msg_create_subscrip2".tr,
                                    margin: getMargin(
                                        left: 16, top: 87, right: 16, bottom: 20),
                                    onTap: onTapBtnCreatesubscrip2)
                              ])))),
            )));
  }

  onTapArrowleft() {
    Get.back();
  }

  void onTapBtnCreatesubscrip2() {
    /*PostSubscriptionsReq postSubscriptionsReq = PostSubscriptionsReq(
      planId: Get.find<PrefUtils>().getPaymentLinkId(),
    );*/
    PostSubscriptionsReq postSubscriptionsReq = PostSubscriptionsReq(
      planId: controller.subscriptionsReviewModelObj.value.plan.value,
      totalCount: int.tryParse(controller.subscriptionsReviewModelObj.value.totalCount.value),
      customerNotify: controller.subscriptionsReviewModelObj.value.customer_notify.value ? 1 : 0,
      expireBy: controller.subscriptionsReviewModelObj.value.noExpiry.value ? controller.subscriptionsReviewModelObj.value.expireAt.value : 0,
      notes: Notes1(notesKey1: controller.subscriptionsReviewModelObj.value.notes.value),
      quantity: int.tryParse(controller.subscriptionsReviewModelObj.value.quantity.value),
      startAt: controller.subscriptionsReviewModelObj.value.startAt.value,
      notifyInfo:
      NotifyInfo(notifyEmail: controller.subscriptionsReviewModelObj.value.notify_email.value, notifyPhone: controller.subscriptionsReviewModelObj.value.notify_phone.value),
    );
    controller.callCreateSubscriptions(
      postSubscriptionsReq.toJson(),
      successCall: _onCreateSubscriptionsSuccess,
      errCall: _onCreateSubscriptionsError,
    );
  }

  void _onCreateSubscriptionsSuccess() {
// TODO: implement Actions
    Get.toNamed(AppRoutes.subscriptionsScreen);
  }
  void _onCreateSubscriptionsError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Subscription faild",
        middleText:
        "Error while doing subscription. Please try after some time");
  }
}