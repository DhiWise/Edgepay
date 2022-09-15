import '../controller/home_controller.dart';
import '../models/home_item_model.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/core/app_export.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget(this.homeItemModelObj, {this.onTapRowprice});

  HomeItemModel homeItemModelObj;

  var controller = Get.find<HomeController>();

  VoidCallback? onTapRowprice;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapRowprice!,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: getPadding(
            top: 16.0,
            bottom: 16.0,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                margin: getMargin(
                  top: 3,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        right: 15,
                      ),
                      child: Obx(
                        () => Text( "₹ " + homeItemModelObj.priceOneTxt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style:
                              AppStyle.txtMulishRomanBold16Bluegray900.copyWith(
                            height: 1.00,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        266.00,
                      ),
                      margin: getMargin(
                        top: 12,
                        right: 10
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                         Padding(
                            padding: getPadding(
                              top: 1,
                              right: 5,
                            ),
                            child: Text(
                              homeItemModelObj.createTimeTxt.value,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMulishRomanRegular14.copyWith(
                                height: 1.00,
                              ),

                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 5,
                              bottom: 9, left: 6
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgVector,
                              height: getSize(
                                2.00,
                              ),
                              width: getSize(
                                2.00,
                              ),
                            ),
                          ),

                          Obx(
                            () => Text(
                              homeItemModelObj.emailTxt.value,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMulishRomanRegular14.copyWith(
                                height: 1.00,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  left: 50,
                  top: 5,
                  bottom: 11,
                ),
                padding: getPadding(
                  left: 8,
                  top: 7,
                  right: 8,
                  bottom: 7,
                ),
                decoration: AppDecoration.txtOutlineGreen600.copyWith(
                  borderRadius: BorderRadiusStyle.txtCircleBorder13,
                ),
                child: Obx(
                  () => Text(
                    homeItemModelObj.capturedTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMulishRomanSemiBold12Green600.copyWith(
                      height: 1.00,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
