
import 'package:base_project_with_cubit/presentation/core/AppDimens.dart';
import 'package:flutter/material.dart';

class AppUtilsWidgets {
  // Vertical spaces
  static const Widget spaceSmallVertical = SizedBox(
    height: AppDimens.smallMargin,
  );
  static const Widget spaceMediumVertical = SizedBox(
    height: AppDimens.mediumMargin,
  );
  static const Widget spaceLargeVertical = SizedBox(
    height: AppDimens.largeMargin,
  );

  // Horizontal spaces
  static const Widget spaceSmallHorizontal = SizedBox(
    width: AppDimens.smallMargin,
  );
  static const Widget spaceMediumHorizontal = SizedBox(
    width: AppDimens.mediumMargin,
  );
  static const Widget spaceLargeHorizontal = SizedBox(
    width: AppDimens.largeMargin,
  );
}