import 'package:flutter/material.dart';

/// Defines a background color used in the app.
const Color colorBg = Color(0xffF8F5F0);

/// Defines the primary color used for buttons, accents, etc.
const Color colorPrimary = Color(0xffFF60E6);

/// Defines a secondary color used for text, icons, etc.
const Color colorSecondary  = Color(0xff1F392C);

/// Defines a lighter shade of the primary color.
const Color colorPrimaryLight  = Color(0xffFFADF2);



Map<int, Color> color = {
  50: const Color.fromRGBO(255, 96, 230, .1),
  100: const Color.fromRGBO(255, 96, 230, .2),
  200: const Color.fromRGBO(255, 96, 230, .3),
  300: const Color.fromRGBO(255, 96, 230, .4),
  400: const Color.fromRGBO(255, 96, 230, .5),
  500: const Color.fromRGBO(255, 96, 230, .6),
  600: const Color.fromRGBO(255, 96, 230, 0.7),
  700: const Color.fromRGBO(255, 96, 230, .8),
  2090: const Color.fromRGBO(255, 96, 230, .9),
  900: const Color.fromRGBO(255, 96, 230, 1),
};

/// Creates a MaterialColor object representing a custom color palette.
///
/// A MaterialColor provides a range of shades for a single base color
/// (specified by `0xffFF60E6` in this case).
///
/// The `color` map defines individual shades for different opacity levels
/// (e.g., 50 for 10% opacity, 100 for 20% opacity, and so on).
///
/// This allows you to use these colors consistently throughout your app
/// with different opacity levels (e.g., for highlighting, disabled elements, etc.).
MaterialColor colorCustom = MaterialColor(0xffFF60E6, color);
