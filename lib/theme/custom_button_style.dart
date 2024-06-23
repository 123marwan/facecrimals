import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Gradient button style
  static BoxDecoration get gradientIndigoAToPrimaryDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(9.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 0),
          colors: [
            appTheme.indigoA10087,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientIndigoAToPrimaryTL9Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(9.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 0),
          colors: [
            appTheme.indigoA1008701,
            theme.colorScheme.primary,
          ],
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
