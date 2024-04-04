import 'package:creator_landing_page/utils/button.dart';
import 'package:creator_landing_page/utils/constant.dart';
import 'package:creator_landing_page/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/textfield.dart';

class BannerSection extends StatefulWidget {
  const BannerSection({super.key});

  @override
  State<BannerSection> createState() => _BannerSectionState();
}

class _BannerSectionState extends State<BannerSection> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(height),
      width: width,
      child: Stack(
        children: [
          //Center Widget
          Align(
            alignment: Alignment.center,
            child: Container(
              width: width * 0.6,
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: getSize(30),
                  ),
                  Stack(
                    children: [
                      Positioned(top: height * 0.25,left: width * 0.02,child: SvgPicture.asset(ovel1,width: getHorizontalSize(600),)),

                      getTextWithStyle(
                        text: "Spark your brand's\nimaginative flair\nwith us",
                        size: 112,
                        fontWeight: FontWeight.normal,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        getHorizontalSize(40), getVerticalSize(10), getHorizontalSize(40), getVerticalSize(10)),
                    child: getTextWithStyle(
                      text:
                          "Our team combines strategy, design, and technology to breathe life into your brand. Collaborate with us to leave a lasting impression on your audience. ",
                      size: 20,
                      fontWeight: FontWeight.normal,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: getSize(30),
                  ),
                  CommonTextField(emailController: emailController)
                ],
              ),
            ),
          ),

          //Left side Widget
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: width * 0.2,
              child: Stack(
                children: [
                  SvgPicture.asset(leftLine1),
                  Positioned(
                    top: 0,
                    child: Image.asset(
                      hands1,
                      width: getHorizontalSize(312),
                    ),
                  ),
                  Positioned(
                    top: height * 0.4,
                    right: 0,
                    child: Transform(
                      alignment: FractionalOffset.center,
                      transform: Matrix4.identity()
                        ..rotateZ(-15 * 3.1415927 / 180),
                      child: Image.asset(
                        bulb1,
                        height: getHorizontalSize(70),
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * 0.5,
                    left: width * 0.03,
                    child: Transform(
                      alignment: FractionalOffset.center,
                      transform: Matrix4.identity()
                        ..rotateZ(-15 * 3.1415927 / 180),
                      child: Image.asset(
                        insta1,
                        height: getHorizontalSize(30),
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * 0.85,
                    left: width * 0.08,
                    child: Transform(
                      alignment: FractionalOffset.center,
                      transform: Matrix4.identity()
                        ..rotateZ(-15 * 3.1415927 / 180),
                      child: Image.asset(
                        fb1,
                        height: getHorizontalSize(55),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Right side Widget
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              child: Stack(
                children: [

                  Positioned(
                    top: height * 0.5,
                    right: 0,
                    child: Image.asset(
                      hands2,
                      width: getHorizontalSize(312),
                    ),
                  ),
                  Positioned(
                      right: 0,
                      top: height * 0.3,
                      child: SvgPicture.asset(rightLine1,width: getHorizontalSize(240),)),
                  Positioned(
                    top: height * 0.3,
                    right: width * 0.17,
                    child: Transform(
                      alignment: FractionalOffset.center,
                      transform: Matrix4.identity()
                        ..rotateZ(-5 * 3.1415927 / 180),
                      child: Image.asset(
                        bulb1,
                        height: getHorizontalSize(100),
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * 0.9,
                    right: width * 0.2,
                    child: Transform(
                      alignment: FractionalOffset.center,
                      transform: Matrix4.identity()
                        ..rotateZ(10 * 3.1415927 / 180),
                      child: Image.asset(
                        ytb1,
                        width: getHorizontalSize(40),
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * 0.2,
                    right: width * 0.02,
                    child: Transform(
                      alignment: FractionalOffset.center,
                      transform: Matrix4.identity()
                        ..rotateZ(50 * 3.1415927 / 180),
                      child: Image.asset(
                        fb1,
                        width: getHorizontalSize(40),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


