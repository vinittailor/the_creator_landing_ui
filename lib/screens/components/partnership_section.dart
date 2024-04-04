import 'package:creator_landing_page/utils/colors.dart';
import 'package:creator_landing_page/utils/constant.dart';
import 'package:creator_landing_page/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PartnershipSection extends StatefulWidget {
  const PartnershipSection({super.key});

  @override
  State<PartnershipSection> createState() => _PartnershipSectionState();
}

class _PartnershipSectionState extends State<PartnershipSection> {
  List<SocialMediaPost> sampleSocialMediaPosts = [
    SocialMediaPost(
        platform: twitter,
        date: '2008 — Today',
        content:
            'Provides communication between the agency and brands. Collects customer feedback and encourages discussion about the product, which helps improve it.'),
    SocialMediaPost(
        platform: pinterest,
        date: '2012 — Today',
        content:
            'Provide unlimited access to artist and designer boards. Provides communication with them and creative partnership. Provides participation in creative conferences'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(height),
      width: width,
      child: Stack(
        children: [
          //Left side Widget
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: width * 0.6,
              child: Stack(
                children: [
                  Positioned(
                    top: height * 0.03,
                    left: 0,
                    child: Transform(
                      alignment: FractionalOffset.center,
                      transform: Matrix4.identity()
                        ..rotateZ(-0 * 3.1415927 / 180),
                      child: SvgPicture.asset(leftLine2,height: getVerticalSize(600),),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Center Widget
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: width * 0.7,
              alignment: Alignment.topCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                        top: height * 0.17,
                        left: width * 0.2,
                        child: SvgPicture.asset(line1,width: getHorizontalSize(400),),
                      ),
                      getTextWithStyle(
                        text:
                            "Contact us today to explore\npartnership opportunities!",
                        size: 56,
                        fontWeight: FontWeight.w700,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getSize(30),
                  ),
                  Row(
                    children: [
                      Container(
                        width: width * 0.7,
                        padding: EdgeInsets.all(getSize(20)),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                getTextWithStyle(
                                  text: "Partners:",
                                  size: 40,
                                  fontWeight: FontWeight.w400,
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(
                                  width: width * 0.3,
                                  child: getTextWithStyle(
                                    text:
                                        "Our creative agency forms strong partnerships with diverse businesses, from startups to global brands, based on trust, respect, and a shared vision for success.",
                                    size: 20,
                                    fontWeight: FontWeight.normal,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: SizedBox(
                                height: height * 0.25,
                                // Adjust container height as needed
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: sampleSocialMediaPosts.length,
                                  // Replace with your data
                                  itemBuilder: (context, index) {
                                    return SocialMediaPostItem(
                                        post: sampleSocialMediaPosts[index]);
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SocialMediaPost {
  final String platform;
  final String date;
  final String content;

  SocialMediaPost(
      {required this.platform, required this.date, required this.content});
}

class SocialMediaPostItem extends StatelessWidget {
  final SocialMediaPost post;

  const SocialMediaPostItem({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(getSize(10)),
      decoration: const BoxDecoration(
          color: colorPrimary,
          borderRadius: BorderRadius.all(Radius.circular(16))),
      child: Column(
        children: [
          SizedBox(
            width: width * 0.23,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(post.platform),
                getTextWithStyle(
                  text: post.date,
                  size: 20,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ),
          SizedBox(height: getSize(20),),
          SizedBox(
            width: width * 0.22,
            child: getTextWithStyle(
              text: post.content,
              size: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
