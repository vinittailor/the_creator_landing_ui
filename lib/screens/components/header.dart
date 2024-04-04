import 'package:creator_landing_page/utils/size_utils.dart';
import 'package:flutter/material.dart';

import '../../utils/constant.dart';
import '../../utils/button.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.fromLTRB(0, 48, 0, 10),
      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(logo,height: getHorizontalSize(32),width: getHorizontalSize(32),),
                const SizedBox(width: 10,),
                getTextWithStyle(text: websiteName, size: 24,fontFamily: 'kulimPark'),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PrimaryButton(text: "Join The Creator", onPressed: (){}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
