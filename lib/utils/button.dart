import 'package:creator_landing_page/utils/colors.dart';
import 'package:creator_landing_page/utils/constant.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  /// The text to be displayed on the button.
  final String text;

  /// The callback function to be executed when the button is pressed.
  final VoidCallback onPressed;

  /// The desired radius for the button's corners. Defaults to 50.
  final double radius;

  const PrimaryButton({
    required this.text,
    required this.onPressed,
    this.radius = 50,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        /// Sets the button's background color to the primary color defined in colors.dart.
        backgroundColor: colorPrimary,

        /// Sets the button's text color to the secondary color defined in colors.dart.
        foregroundColor: colorSecondary,

        /// Sets padding around the button's text.
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),

        /// Defines the button's shape with rounded corners. Adjusts the radius using the provided value.
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(radius), // Adjust corner radius as desired
        ),
      ),

      /// Displays the button text with styling retrieved from the getTextWithStyle function (assumed to be defined elsewhere).
      child:
          getTextWithStyle(text: text, size: 18, fontWeight: FontWeight.w700),
    );
  }
}
