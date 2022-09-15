import '../transection_list_screen/widgets/listprice_item_widget.dart';
import 'controller/transection_list_controller.dart';
import 'models/listprice_item_model.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/core/app_export.dart';

class TransectionListScreen extends GetWidget<TransectionListController> {
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
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                                bottom: 61),
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
                                                              top: 1,
                                                              bottom: 1),
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
                                                      padding:
                                                          getPadding(left: 24),
                                                      child: Text(
                                                          "lbl_transections".tr,
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
                              child: Text("msg_recent_transect".tr,
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
                              itemCount: controller.transectionListModelObj
                                  .value.listpriceItemList.length,
                              itemBuilder: (context, index) {
                                ListpriceItemModel model = controller
                                    .transectionListModelObj
                                    .value
                                    .listpriceItemList[index];
                                return ListpriceItemWidget(
                                    model,
                                    onTapRowprice:(){
                                      Get.toNamed(AppRoutes.transectionDetailsScreen, arguments: {
                                        NavigationArgs.transectionid: controller.transectionListModelObj.value.listpriceItemList[index].itemId.value
                                      });
                                    });
                              }))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(396.00),
                          margin: getMargin(
                              left: 16, top: 16, right: 16, bottom: 20),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
