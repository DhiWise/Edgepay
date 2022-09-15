import 'controller/splashscreen_controller.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/core/app_export.dart';

class SplashscreenScreen extends GetWidget<SplashscreenController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: size.height,
                        width: size.width,
                        child: Stack(children: [
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(
                                      left: 40,
                                      top: 40,
                                      right: 40,
                                      bottom: 20),
                                  child: CommonImageView(
                                      imagePath: ImageConstant.imgImage1,
                                      height: getVerticalSize(58.00),
                                      width: getHorizontalSize(275.00))))
                        ]))))));
  }
}
