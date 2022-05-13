import 'package:flutter/material.dart';
import 'package:project_uts/style/colors.dart';

class AppTextStyle {
  //main title style
  static TextStyle mainTitleStyle = const TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
  );

  //second title
  static TextStyle secondaryTitleStyle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: AppColor.primaryColor,
  );

  //price text style
  static TextStyle priceTextStyle = TextStyle(
    fontSize: 24.0,
    color: AppColor.primaryColor,
    fontWeight: FontWeight.w500,
  );

  //detailsTitleStyle
  static TextStyle detailsTextStyle = const TextStyle(
    fontSize: 34.0,
    fontWeight: FontWeight.bold,
  );
}
