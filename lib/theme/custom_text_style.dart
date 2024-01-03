import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body style
  static get bodyMediumActor => theme.textTheme.bodyMedium!.actor;
  static get bodyMediumAlata => theme.textTheme.bodyMedium!.alata;
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumRoboto => theme.textTheme.bodyMedium!.roboto.copyWith(
        fontSize: 14.fSize,
      );
  // Display text style
  static get displaySmallBlack900 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.black900,
      );
  // Headline text style
  static get headlineLargeOffsideBlack900 =>
      theme.textTheme.headlineLarge!.offside.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallPontanoSansWhiteA700 =>
      theme.textTheme.headlineSmall!.pontanoSans.copyWith(
        color: appTheme.whiteA700,
      );
  static get headlineSmallRobotoBlack900 =>
      theme.textTheme.headlineSmall!.roboto.copyWith(
        color: appTheme.black900,
        fontSize: 25.fSize,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeBlack900_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
      );
}

extension on TextStyle {
  TextStyle get sansation {
    return copyWith(
      fontFamily: 'Sansation',
    );
  }

  TextStyle get alata {
    return copyWith(
      fontFamily: 'Alata',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get monoton {
    return copyWith(
      fontFamily: 'Monoton',
    );
  }

  TextStyle get actor {
    return copyWith(
      fontFamily: 'Actor',
    );
  }

  TextStyle get offside {
    return copyWith(
      fontFamily: 'Offside',
    );
  }

  TextStyle get pontanoSans {
    return copyWith(
      fontFamily: 'Pontano Sans',
    );
  }
}
