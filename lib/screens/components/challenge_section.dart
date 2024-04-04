import 'package:creator_landing_page/utils/constant.dart';
import 'package:creator_landing_page/utils/size_utils.dart';
import 'package:flutter/material.dart';

class ChallengeSection extends StatefulWidget {
  const ChallengeSection({super.key});

  @override
  State<ChallengeSection> createState() => _ChallengeSectionState();
}

class _ChallengeSectionState extends State<ChallengeSection> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(height),
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          getTextWithStyle(
            text:
            "Making it big on any Platform is\ntougher than you think",
            size: 56,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: getVerticalSize(40),),
          Image.asset(womenImg1,width: getHorizontalSize(800),),
        ],
      ),
    );
  }
}
