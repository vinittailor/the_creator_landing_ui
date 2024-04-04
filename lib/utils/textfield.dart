import 'package:creator_landing_page/utils/size_utils.dart';
import 'package:flutter/material.dart';

import 'button.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    super.key,
    required this.emailController,
  });

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    /// Creates a row with centered content
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /// Container for the email field and button
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(100))),
          child: Row(
            children: [
              /// Text field for email input
              SizedBox(
                width: width * 0.3, // Assuming 'width' is a variable from size_utils.dart for responsive width
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: InputBorder.none, // Removes default border
                    focusedBorder: InputBorder.none, // Removes focused border
                    enabledBorder: InputBorder.none, // Removes enabled border
                    errorBorder: InputBorder.none, // Removes error border
                    disabledBorder: InputBorder.none, // Removes disabled border
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20), // Padding around the hint text
                    hintText: "Enter your Email",
                    hintStyle: TextStyle(
                      fontFamily: 'kulimPark',
                      fontSize: getFontSize(20), // Assuming getFontSize is from size_utils.dart for responsive font size
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10), // Spacing between email field and button
              /// PrimaryButton widget for "Join" action (likely imported from button.dart)
              PrimaryButton(text: "Join", onPressed: () {}),
            ],
          ),
        ),
      ],
    );
  }
}
