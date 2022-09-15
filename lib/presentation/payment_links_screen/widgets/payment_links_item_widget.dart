import '../controller/payment_links_controller.dart';
import '../models/payment_links_item_model.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/core/app_export.dart';

// ignore: must_be_immutable
class PaymentLinksItemWidget extends StatelessWidget {
  PaymentLinksItemWidget(this.paymentLinksItemModelObj);

  PaymentLinksItemModel paymentLinksItemModelObj;

  var controller = Get.find<PaymentLinksController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    right: 10,
                  ),
                  child: Obx(
                        () => Text(
                      paymentLinksItemModelObj.priceOneTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMulishRomanBold16.copyWith(
                        height: 1.00,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    253.00,
                  ),
                  margin: getMargin(
                    top: 7,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 1,right: 5,
                        ),
                        child: Text(
                          paymentLinksItemModelObj.createAt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMulishRomanRegular14.copyWith(
                            height: 1.00,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 2,
                          bottom: 2,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgVectorBluegray500,
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
                          paymentLinksItemModelObj.emailTxt.value,
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
              left: 66,
              top: 11,
              bottom: 11,
            ),
            padding: getPadding(
              left: 8,
              top: 7,
              right: 8,
              bottom: 7,
            ),
            decoration: AppDecoration.txtOutlineBlue700.copyWith(
              borderRadius: BorderRadiusStyle.txtCircleBorder13,
            ),
            child: Obx(
                  () => Text(
                paymentLinksItemModelObj.issuedTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtMulishRomanSemiBold12.copyWith(
                  height: 1.00,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}