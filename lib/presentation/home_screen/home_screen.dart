import '../home_screen/widgets/home_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_item_model.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/core/app_export.dart';
import 'package:razorpay_x_dhiwise/widgets/custom_icon_button.dart';

class HomeScreen extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(children: [
              Expanded(
                  child: Container(
                      width: size.width,
                      child: SingleChildScrollView(
                          child: Container(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                            Container(
                                width: double.infinity,
                                decoration: AppDecoration.fillGray900,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: size.width,
                                          margin: getMargin(
                                              left: 16, top: 24, right: 16),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                    padding: getPadding(
                                                        left: 21,
                                                        top: 19,
                                                        right: 22,
                                                        bottom: 18),
                                                    decoration: AppDecoration
                                                        .txtFillIndigo900
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .txtCircleBorder28),
                                                    child: Text("lbl_r".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtMulishRomanBold18
                                                            .copyWith())),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 12,
                                                        top: 21,
                                                        bottom: 16),
                                                    child: Text(
                                                        "lbl_razorpay".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtMulishRomanBold18
                                                            .copyWith()))
                                              ])),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              margin: getMargin(
                                                  left: 16,
                                                  top: 27,
                                                  right: 16,
                                                  bottom: 44),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text:
                                                            "msg_share_your_razo2"
                                                                .tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .bluegray400,
                                                            fontSize:
                                                                getFontSize(14),
                                                            fontFamily:
                                                                'Mulish',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600)),
                                                    TextSpan(
                                                        text: ' ',
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .whiteA700,
                                                            fontSize:
                                                                getFontSize(14),
                                                            fontFamily:
                                                                'Mulish',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700)),
                                                    TextSpan(
                                                        text: "lbl_preview".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .blue300,
                                                            fontSize:
                                                                getFontSize(14),
                                                            fontFamily:
                                                                'Mulish',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700))
                                                  ]),
                                                  textAlign: TextAlign.left)))
                                    ])),
                            Container(
                                width: double.infinity,
                                margin: getMargin(top: 22),
                                decoration: AppDecoration.fillWhiteA700,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 16, right: 16),
                                              child: Text(
                                                  "lbl_accept_payments".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMulishRomanBold18Bluegray800
                                                      .copyWith()))),
                                      CustomIconButton(
                                          height: 64,
                                          width: 64,
                                          margin: getMargin(
                                              left: 53, top: 26, right: 53),
                                          variant:
                                              IconButtonVariant.FillIndigo50,
                                          shape: IconButtonShape.CircleBorder32,
                                          padding:
                                              IconButtonPadding.PaddingAll18,
                                          alignment: Alignment.centerLeft,
                                          onTap: () {
                                            onTapBtntf();
                                          },
                                          child: CommonImageView(
                                              svgPath: ImageConstant.imgLink)),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 38, top: 8, right: 38),
                                              child: Text(
                                                  "lbl_payment_link2".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMulishRomanMedium16Indigo900
                                                      .copyWith()))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                              width: double.infinity,
                                              margin: getMargin(top: 28),
                                              decoration:
                                                  AppDecoration.fillWhiteA700,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
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
                                                            "msg_recent_transact"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMulishRomanBold18Bluegray800
                                                                .copyWith())),
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 16,
                                                                top: 26,
                                                                right: 16),
                                                            child: Obx(() => ListView
                                                                .separated(
                                                                    physics:
                                                                        BouncingScrollPhysics(),
                                                                    shrinkWrap:
                                                                        true,
                                                                    separatorBuilder:
                                                                        (context,
                                                                            index) {
                                                                      return Container(
                                                                          height: getVerticalSize(
                                                                              0.58),
                                                                          width: getHorizontalSize(
                                                                              396.00),
                                                                          decoration:
                                                                              BoxDecoration(color: ColorConstant.gray300));
                                                                    },
                                                                    itemCount: controller
                                                                        .homeModelObj
                                                                        .value
                                                                        .homeItemList
                                                                        .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            index) {
                                                                      HomeItemModel
                                                                          model =
                                                                          controller
                                                                              .homeModelObj
                                                                              .value
                                                                              .homeItemList[index];
                                                                      return HomeItemWidget(
                                                                          model,
                                                                          onTapRowprice:(){
                                                                        Get.toNamed(AppRoutes.transectionDetailsScreen, arguments: {
                                                                          NavigationArgs.transectionid: controller.getPaymentsResp.items![index].id!
                                                                        });
                                                                      });
                                                                    })))),
                                                    Container(
                                                        height: getVerticalSize(
                                                            1.00),
                                                        width:
                                                            getHorizontalSize(
                                                                396.00),
                                                        margin: getMargin(
                                                            left: 16,
                                                            top: 16,
                                                            right: 16,
                                                            bottom: 15),
                                                        decoration: BoxDecoration(
                                                            color: ColorConstant
                                                                .gray300))
                                                  ])))
                                    ]))
                          ]))))),
              Container(
                  decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      border: Border.all(
                          color: ColorConstant.bluegray100,
                          width: getHorizontalSize(1.00)),
                      boxShadow: [
                        BoxShadow(
                            color: ColorConstant.black9003f,
                            spreadRadius: getHorizontalSize(2.00),
                            blurRadius: getHorizontalSize(2.00),
                            offset: Offset(0, 4))
                      ]),
                  child: Padding(
                      padding: getPadding(top: 10, bottom: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                  Container(
                                      height: getVerticalSize(2.00),
                                      width: getHorizontalSize(85.00),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.blue700)),
                                  Padding(
                                      padding: getPadding(
                                          left: 24, top: 10, right: 24),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgHome,
                                          height: getVerticalSize(26.00),
                                          width: getHorizontalSize(24.00))),
                                  Padding(
                                      padding: getPadding(
                                          left: 24,
                                          top: 9,
                                          right: 23,
                                          bottom: 1),
                                      child: Text("lbl_home".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMulishRomanSemiBold14Blue700
                                              .copyWith()))
                                ])),
                            GestureDetector(
                                onTap: () {
                                  onTapColumnfolder();
                                },
                                child: Container(
                                    margin: getMargin(top: 12, bottom: 1),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(
                                                  left: 29, right: 29),
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgFolder,
                                                  height: getSize(26.00),
                                                  width: getSize(26.00))),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(top: 8),
                                                  child: Text(
                                                      "lbl_transactions".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMulishRomanSemiBold14
                                                          .copyWith())))
                                        ]))),
                            GestureDetector(
                                onTap: () {
                                  goToSubscription();
                                },
                                child: Container(
                                    margin: getMargin(top: 13),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(
                                                  left: 30, right: 30),
                                              child: CommonImageView(
                                                  svgPath:
                                                  ImageConstant.imgVector1,
                                                  height: getSize(26.00),
                                                  width: getSize(26.00))),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(top: 10),
                                                  child: Text(
                                                      "lbl_subscriptions".tr,
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMulishRomanSemiBold14Bluegray500
                                                          .copyWith())))
                                        ])))
                          ])))
            ])));
  }

  // onTapRowprice() {
  //   Get.toNamed(AppRoutes.transectionDetailsScreen, arguments: {
  //     NavigationArgs.transectionid: controller.getPaymentsResp.items!.id!
  //   });
  // }
//
  onTapBtntf() {
    // TODO: implement Actions
    Get.toNamed(AppRoutes.paymentLinksScreen);
  }
  onTapColumnfolder() {
    Get.toNamed(AppRoutes.transectionListScreen);
  }

  goToSubscription() {
// TODO: implement Actions
    Get.toNamed(AppRoutes.subscriptionsScreen);

  }
}
