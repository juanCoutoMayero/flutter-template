import 'package:flutter/material.dart';

import 'AppColors.dart';
import 'AppDimens.dart';
import 'AppTextStyles.dart';

class AppWidgetsUtils {
  static Widget buildPrimaryButton({
    required String text,
    required bool isEnable,
    required Function onClick,
  }) =>
      ElevatedButton(
        onPressed: isEnable
            ? () {
          onClick.call();
        }
            : null,
        style: OutlinedButton.styleFrom(
          side: isEnable
              ? BorderSide(color: AppColors.orangeAccent)
              : BorderSide(color: AppColors.green),
        ),
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: AppDimens.largeMargin,
            vertical: AppDimens.mediumMargin,
          ),
          child: Text(
            text,
            style: isEnable
                ? AppTextStyles.primaryText
                : AppTextStyles.primaryTextGray,
          ),
        ),
      );

  static Widget buildSecondButton({
    required String text,
    required bool isEnable,
    required Function onClick,
  }) =>
      OutlinedButton(
        onPressed: isEnable
            ? () {
                onClick.call();
              }
            : null,
        style: OutlinedButton.styleFrom(
          side: isEnable
              ? BorderSide(color: AppColors.orangeAccent)
              : BorderSide(color: AppColors.green),
        ),
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: AppDimens.largeMargin,
            vertical: AppDimens.mediumMargin,
          ),
          child: Text(
            text,
            style: isEnable
                ? AppTextStyles.primaryText
                : AppTextStyles.primaryTextGray,
          ),
        ),
      );
}
