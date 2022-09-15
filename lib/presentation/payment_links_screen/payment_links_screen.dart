import '../payment_links_screen/widgets/payment_links_item_widget.dart';
import 'controller/payment_links_controller.dart';
import 'models/payment_links_item_model.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/core/app_export.dart';

class PaymentLinksScreen extends GetWidget<PaymentLinksController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
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
                                      width: double.infinity,
                                      decoration: AppDecoration.fillGray900,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    width: size.width,
                                                    margin: getMargin(
                                                        left: 24,
                                                        top: 31,
                                                        right: 24,
                                                        bottom: 59),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment.center,
                                                        mainAxisSize: MainAxisSize.max,
                                                        children: [
                                                          GestureDetector(
                                                              onTap: () {
                                                                onTapArrowleft2();
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
                                                                  "lbl_payment_links"
                                                                      .tr,
                                                                  overflow: TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign.left,
                                                                  style: AppStyle
                                                                      .txtMulishRomanBold18
                                                                      .copyWith()))
                                                        ])))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 17, top: 22, right: 17),
                                      child: Text("msg_recent_payment".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMulishRomanBold18Bluegray800
                                              .copyWith()))),
                              Padding(
                                  padding: getPadding(left: 16, top: 26, right: 16),
                                  child: Obx(() => ListView.separated(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return Container(
                                            height: getVerticalSize(0.58),
                                            width: getHorizontalSize(396.00),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray300));
                                      },
                                      itemCount: controller.paymentLinksModelObj.value
                                          .paymentLinksItemList.length,
                                      itemBuilder: (context, index) {
                                        PaymentLinksItemModel model = controller
                                            .paymentLinksModelObj
                                            .value
                                            .paymentLinksItemList[index];
                                        return PaymentLinksItemWidget(model);
                                      }))),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: getHorizontalSize(396.00),
                                  margin: getMargin(left: 16, top: 16, right: 16),
                                  decoration:
                                  BoxDecoration(color: ColorConstant.gray300)),
                              GestureDetector(
                                  onTap: () {
                                    onTapButton();
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 16, top: 39, right: 16, bottom: 19),
                                      decoration: AppDecoration.fillBlue700,
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding:
                                                getPadding(top: 17, bottom: 17),
                                                child: CommonImageView(
                                                    svgPath:
                                                    ImageConstant.imgVector16X16,
                                                    height: getSize(16.00),
                                                    width: getSize(16.00))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 12, top: 18, bottom: 12),
                                                child: Text("msg_create_payment".tr,
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMulishRomanMedium18
                                                        .copyWith(height: 1.00)))
                                          ])))
                            ]))))));
  }

  onTapArrowleft2() {
    Get.back();
  }

  onTapButton() {
// TODO: implement Actions
    Get.offNamed(AppRoutes.standardPaymentLinkScreen);
  }
}