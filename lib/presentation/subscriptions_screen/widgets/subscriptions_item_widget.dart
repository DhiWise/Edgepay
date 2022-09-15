import '../controller/subscriptions_controller.dart';
import '../models/subscriptions_item_model.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/core/app_export.dart';
import 'package:razorpay_x_dhiwise/widgets/custom_button.dart';

// ignore: must_be_immutable
class SubscriptionsItemWidget extends StatelessWidget {
  SubscriptionsItemWidget(this.subscriptionsItemModelObj);

  SubscriptionsItemModel subscriptionsItemModelObj;

  var controller = Get.find<SubscriptionsController>();

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
            width: 165,
            margin: getMargin(
              top: 5,
              bottom: 2,
              right: 20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    subscriptionsItemModelObj.plinkjm0q7eSNmTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style:
                        AppStyle.txtMulishRomanSemiBold16Bluegray901.copyWith(
                      height: 1.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 9,
                    right: 10,
                  ),
                  child: Obx(
                    () => Text(
                      subscriptionsItemModelObj.timeTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMulishRomanRegular14.copyWith(
                        height: 1.00,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomButton(
            width: 60,
            text: subscriptionsItemModelObj.statusTxt.value,
            margin: getMargin(
              left: 120,
              top: 11,
              bottom: 11,
            ),
          ),
        ],
      ),
    );
  }
}
