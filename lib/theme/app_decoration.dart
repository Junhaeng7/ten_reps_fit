import 'package:flutter/material.dart';
import 'package:ten_reps/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray100,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Outline decorations
  static BoxDecoration get outlineOnError => BoxDecoration(
        color: appTheme.black900,
        border: Border.all(
          color: theme.colorScheme.onError,
          width: 3.h,
        ),
      );
  static BoxDecoration get outlinePrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        border: Border(
          top: BorderSide(
            color: theme.colorScheme.primaryContainer,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineRedA => BoxDecoration(
        color: theme.colorScheme.errorContainer,
        border: Border(
          left: BorderSide(
            color: appTheme.redA200,
            width: 2.h,
          ),
          bottom: BorderSide(
            color: appTheme.redA200,
            width: 2.h,
          ),
          right: BorderSide(
            color: appTheme.redA200,
            width: 2.h,
          ),
        ),
      );
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border(
          top: BorderSide(
            color: appTheme.whiteA700,
            width: 2.h,
          ),
        ),
      );
  static BoxDecoration get outlineWhiteA700 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border(
          top: BorderSide(
            color: appTheme.whiteA700,
            width: 2.h,
          ),
        ),
      );

  // Row decorations
  static BoxDecoration get row7 => BoxDecoration();
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderTL20 => BorderRadius.vertical(
        top: Radius.circular(20.h),
      );
  static BorderRadius get customBorderTL5 => BorderRadius.vertical(
        top: Radius.circular(5.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder17 => BorderRadius.circular(
        17.h,
      );
  static BorderRadius get roundedBorder3 => BorderRadius.circular(
        3.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
