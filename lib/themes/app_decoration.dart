import 'package:flutter/material.dart';
import 'package:tareqy/themes/utils/size_utils.dart';

import 'theme_helper.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
    color: appTheme.gray50,
  );
  static BoxDecoration get fillIndigo => BoxDecoration(
    color: appTheme.indigo800,
  );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
    color: theme.colorScheme.onErrorContainer.withOpacity(1),
  );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
    color: theme.colorScheme.onPrimaryContainer,
  );

  // Gradient decorations
  static BoxDecoration get gradientGrayToGray => BoxDecoration(
    gradient: LinearGradient(
      begin: const Alignment(0.5, 0),
      end: const Alignment(0.5, 1),
      colors: [
        appTheme.gray50099,
        appTheme.gray50099,
      ],
    ),
  );

  // Outline decorations
  static BoxDecoration get outlineBlack => const BoxDecoration();
  static BoxDecoration get outlineBlack900 => BoxDecoration(
    color: theme.colorScheme.onErrorContainer.withOpacity(1),
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withOpacity(0.1),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: const Offset(
          0,
          9,
        ),
      ),
    ],
  );
  static BoxDecoration get outlineBlack9001 => BoxDecoration(
    color: theme.colorScheme.onErrorContainer.withOpacity(1),
    border: Border.all(
      color: appTheme.black900,
      width: 2.h,
    ),
  );
  static BoxDecoration get outlineIndigo => BoxDecoration(
    border: Border.all(
      color: appTheme.indigo800,
      width: 1.h,
    ),
  );
  static BoxDecoration get outlineOnError => BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: theme.colorScheme.onError,
        width: 2.h,
      ),
    ),
  );
  static BoxDecoration get outlineOnErrorContainer => BoxDecoration(
    border: Border.all(
      color: theme.colorScheme.onErrorContainer.withOpacity(0.48),
      width: 6.h,
    ),
  );
  static BoxDecoration get outlineOnErrorContainer1 => BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.8),
        width: 2.h,
      ),
    ),
  );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder55 => BorderRadius.circular(
    55.h,
  );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
    10.h,
  );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
    20.h,
  );
  static BorderRadius get roundedBorder28 => BorderRadius.circular(
    28.h,
  );
  static BorderRadius get roundedBorder40 => BorderRadius.circular(
    40.h,
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
