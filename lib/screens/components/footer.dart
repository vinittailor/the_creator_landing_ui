import 'package:creator_landing_page/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/size_utils.dart';
import '../../utils/textfield.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(height / 2),
      width: width,
      child: Column(
        children: [
          getTextWithStyle(text: "We are waiting for you to contact us", size: 56),
          SizedBox(height: getVerticalSize(10),),
          getTextWithStyle(text: "You can write to us at any time and get an instant response.", size: 20),
          SizedBox(height: getVerticalSize(60),),
          CommonTextField(emailController: emailController),
         const Spacer(),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: getHorizontalSize(120),vertical: getVerticalSize(20)),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      SvgPicture.asset(copyRight,width: getHorizontalSize(20),),
                      SizedBox(width: getHorizontalSize(10),),
                      getTextWithStyle(text: "copywriting", size: 20)
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      getTextWithStyle(text: 'Partners', size: 20,),
                      getTextWithStyle(text: 'How we Work', size: 20,),
                      getTextWithStyle(text: 'Review', size: 20,),
                      getTextWithStyle(text: 'Charity', size: 20,),

                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset(instagram,width: getHorizontalSize(20),),
                      SizedBox(width: getHorizontalSize(10),),
                      SvgPicture.asset(facebook,width: getHorizontalSize(20),),
                      SizedBox(width: getHorizontalSize(10),),
                      SvgPicture.asset(linkedIn,width: getHorizontalSize(20),),

                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
