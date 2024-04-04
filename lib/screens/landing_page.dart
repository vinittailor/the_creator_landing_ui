import 'package:creator_landing_page/screens/components/banner_section.dart';
import 'package:creator_landing_page/screens/components/challenge_section.dart';
import 'package:creator_landing_page/screens/components/charity_section.dart';
import 'package:creator_landing_page/screens/components/how_we_work_section.dart';
import 'package:creator_landing_page/screens/components/review_section.dart';
import 'package:creator_landing_page/utils/colors.dart';
import 'package:flutter/material.dart';

import 'components/footer.dart';
import 'components/header.dart';
import 'components/partnership_section.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: colorBg,
      body: Column(
        children: [
          Header(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  BannerSection(),
                  PartnershipSection(),
                  ChallengeSection(),
                  HowWeWorkSection(),
                  ReviewSection(),
                  CharitySection(),
                  Footer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
