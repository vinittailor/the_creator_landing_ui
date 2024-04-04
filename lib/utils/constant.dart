import 'package:creator_landing_page/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'colors.dart';

//region Assets path
const String logo = "assets/images/logo_128x128.png";

const String leftLine1 = "assets/images/left_line_1.svg";
const String leftLine2 = "assets/images/left_line_2.svg";
const String leftLine3 = "assets/images/left_line_3.svg";
const String leftLine32 = "assets/images/left_line_3_2.svg";
const String rightLine1 = "assets/images/right_line_1.svg";
const String rightLine2 = "assets/images/right_line_2.svg";
const String rightLine22 = "assets/images/right_line_2_2.svg";
const String line1 = "assets/images/line_1.svg";

const String fb1 = "assets/images/fb_1.png";
const String ytb1 = "assets/images/ytb_1.png";
const String insta1 = "assets/images/insta_1.png";
const String bulb1 = "assets/images/bulb_1.png";
const String twitter = "assets/images/twitter.svg";
const String pinterest = "assets/images/pinterest.svg";
const String copyRight = "assets/images/copyright.svg";
const String instagram = "assets/images/instagram.svg";
const String facebook = "assets/images/facebook.svg";
const String linkedIn = "assets/images/linkedin.svg";

const String hands1 = "assets/images/hands_1.png";
const String hands2 = "assets/images/hands_2.png";
const String hands3 = "assets/images/hands_3.png";
const String hands4 = "assets/images/hands_4.png";

const String like1 = "assets/images/like_1.png";
const String like2 = "assets/images/like_2.png";

const String womenImg1 = "assets/images/women_illustration_1.png";
const String womenImg2 = "assets/images/women_illustration_2.png";
const String womenImg3 = "assets/images/women_illustration_3.png";
const String womenImg4 = "assets/images/women_illustration_4.png";


const String men1 = "assets/images/men_dp_1.png";
const String men2 = "assets/images/men_dp_2.png";
const String men3 = "assets/images/men_dp_3.png";
const String avatar1 = "assets/images/avatar_1.png";
const String avatar2 = "assets/images/avatar_2.png";
const String avatar3 = "assets/images/avatar_3.png";

const String ovel1 = "assets/images/ovel_1.svg";
const String ovel2 = "assets/images/ovel_2.svg";

const String leftArrow = "assets/images/left_arrow.svg";
const String rightArrow = "assets/images/right_arrow.svg";

//endregion

const String websiteName = "The Creator";

const String reviewContentText = "The Creator innovative ideas, strategic approach, and outstanding results have left a lasting impression on me as a blogger, making them a standout in the creative industry.";


//region Widget
Text getTextWithStyle({
  /// The text content to be displayed.
  required String text,

  /// The desired font size.
  required double size,

  /// The text color (defaults to the secondary color defined in colors.dart).
  Color color = colorSecondary,

  /// The text weight (defaults to normal).
  FontWeight fontWeight = FontWeight.normal,

  /// The desired font family (defaults to 'kulimPark').
  String fontFamily = 'kulimPark',

  /// The text alignment (defaults to left-aligned).
  TextAlign textAlign = TextAlign.left,
}) =>
    Text(
      text,
      style: TextStyle(
        fontSize: getHorizontalSize(size),
        color: color,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
      ),
      textAlign: textAlign,
    );
//endregion


double notchSize(BuildContext context) {
  ///this code is identify device has notch or not also notch height
  if (MediaQuery.of(context).viewPadding.top == 0) {
    return 20;
  } else {
    return MediaQuery.of(context).viewPadding.top + 10;
  }
}

//region Routing
Future? nextPage(context, Widget page) {
  return Get.to(page, transition: Transition.rightToLeft);
}

replacePage(context, Widget page) {
  return Get.off(page, transition: Transition.rightToLeft);
}

replaceAllPage(context, Widget page) {
  return Get.offAll(page, transition: Transition.rightToLeft);
}
//endregion
