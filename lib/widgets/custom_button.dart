import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.text});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Text(
          text ?? "",
          textAlign: TextAlign.center,
          style: _setFontStyle(),
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll17:
        return getPadding(
          all: 17,
        );
      default:
        return getPadding(
          all: 7,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineGray300:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillBlue700:
        return ColorConstant.blue700;
      case ButtonVariant.OutlineAmber500:
        return ColorConstant.gray50;
      case ButtonVariant.OutlineBlue7001_2:
        return ColorConstant.gray102;
      case ButtonVariant.OutlineRed700:
        return ColorConstant.gray103;
      default:
        return ColorConstant.gray101;
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineGray300:
        return Border.all(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineAmber500:
        return Border.all(
          color: ColorConstant.amber500,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBlue7001_2:
        return Border.all(
          color: ColorConstant.blue700,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineRed700:
        return Border.all(
          color: ColorConstant.red700,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillBlue700:
        return null;
      default:
        return Border.all(
          color: ColorConstant.blue700,
          width: getHorizontalSize(
            1.00,
          ),
        );
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            13.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.GilroyMedium16:
        return TextStyle(
          color: ColorConstant.bluegray500,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.MulishRomanMedium18:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.MulishRomanSemiBold12Amber500:
        return TextStyle(
          color: ColorConstant.amber500,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.MulishRomanSemiBold12Red700:
        return TextStyle(
          color: ColorConstant.red700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w600,
        );
      default:
        return TextStyle(
          color: ColorConstant.blue700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w600,
        );
    }
  }
}

enum ButtonShape {
  Square,
  CircleBorder13,
}

enum ButtonPadding {
  PaddingAll7,
  PaddingAll17,
}

enum ButtonVariant {
  OutlineBlue700,
  OutlineGray300,
  FillBlue700,
  OutlineAmber500,
  OutlineBlue7001_2,
  OutlineRed700,
}

enum ButtonFontStyle {
  MulishRomanSemiBold12,
  GilroyMedium16,
  MulishRomanMedium18,
  MulishRomanSemiBold12Amber500,
  MulishRomanSemiBold12Red700,
}
