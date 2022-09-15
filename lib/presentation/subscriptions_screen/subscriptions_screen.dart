import '../subscriptions_screen/widgets/subscriptions_item_widget.dart';
import 'controller/subscriptions_controller.dart';
import 'models/subscriptions_item_model.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/core/app_export.dart';

class SubscriptionsScreen extends GetWidget<SubscriptionsController> {
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Container(
                          width: size.width,
                          decoration:
                              BoxDecoration(color: ColorConstant.gray900),
                          child: Padding(
                              padding: getPadding(
                                  left: 24, top: 31, right: 240, bottom: 28),
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
                                            padding: getPadding(bottom: 3),
                                            child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowleft,
                                                height: getVerticalSize(16.00),
                                                width:
                                                    getHorizontalSize(15.00)))),
                                    Padding(
                                        padding: getPadding(left: 24, top: 1),
                                        child: Text("lbl_subscriptions".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMulishRomanSemiBold18WhiteA700
                                                .copyWith()))
                                  ]))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      Container(
                          width: double.infinity,
                          margin: getMargin(top: 12),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 18, right: 16),
                                    child: Text(
                                        "msg_my_subscription".tr.toUpperCase(),
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMulishRomanBold18Bluegray800
                                            .copyWith())),
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 26, right: 16),
                                    child: Obx(() => ListView.separated(
                                        physics: BouncingScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return Container(
                                              height: getVerticalSize(0.58),
                                              width: getHorizontalSize(396.00),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.gray300));
                                        },
                                        itemCount: controller
                                            .subscriptionsModelObj
                                            .value
                                            .subscriptionsItemList
                                            .length,
                                        itemBuilder: (context, index) {
                                          SubscriptionsItemModel model =
                                              controller
                                                  .subscriptionsModelObj
                                                  .value
                                                  .subscriptionsItemList[index];
                                          return SubscriptionsItemWidget(model);
                                        }))),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(396.00),
                                    margin: getMargin(
                                        left: 16,
                                        top: 16,
                                        right: 16,
                                        bottom: 11),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray300))
                              ])),
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapButton();
                              },
                              child: Container(
                                  margin: getMargin(
                                      left: 16, top: 24, right: 16, bottom: 96),
                                  decoration: AppDecoration.fillBlue700,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 17, bottom: 17),
                                            child: CommonImageView(
                                                svgPath: ImageConstant.imgPlus,
                                                height: getSize(16.00),
                                                width: getSize(16.00))),
                                        Padding(
                                            padding: getPadding(
                                                left: 12, top: 18, bottom: 12),
                                            child: Text(
                                                "msg_create_new_subs".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMulishRomanMedium18
                                                    .copyWith(height: 1.00)))
                                      ]))))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapButton() {
    Get.offNamed(AppRoutes.subscriptionsPlanDetailsScreen);
  }
}
