import '../controller/transection_list_controller.dart';
import '../models/listprice_item_model.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/core/app_export.dart';

// ignore: must_be_immutable
class ListpriceItemWidget extends StatelessWidget {
  ListpriceItemWidget(this.listpriceItemModelObj, {this.onTapRowprice});

  ListpriceItemModel listpriceItemModelObj;

  var controller = Get.find<TransectionListController>();
  VoidCallback? onTapRowprice;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapRowprice!,
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
                top: 7,
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
                        listpriceItemModelObj.priceTxt.value,
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
                      265.00,
                    ),
                    margin: getMargin(
                      top: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 1,
                          ),
                          child: Obx(
                            () => Text(
                              listpriceItemModelObj.timeTxt.value,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMulishRomanRegular14.copyWith(
                                height: 1.00,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 8,
                            bottom: 9, right : 5
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
                            listpriceItemModelObj.emailTxt.value,
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
                left: 53,
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
              child: Text(
                listpriceItemModelObj.statusTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtMulishRomanSemiBold12.copyWith(
                  height: 1.00,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
