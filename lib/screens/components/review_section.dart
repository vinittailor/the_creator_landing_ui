import 'package:creator_landing_page/utils/colors.dart';
import 'package:creator_landing_page/utils/constant.dart';
import 'package:creator_landing_page/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReviewSection extends StatefulWidget {
  const ReviewSection({super.key});

  @override
  State<ReviewSection> createState() => _ReviewSectionState();
}

class _ReviewSectionState extends State<ReviewSection> {


  List<ReviewPost> sampleReviewPosts = [
    ReviewPost(
      userImage: avatar1,
      content: reviewContentText,
    ),
    ReviewPost(
      userImage: avatar2,
      content: reviewContentText,
    ),
    ReviewPost(
      userImage: avatar3,
      content: reviewContentText,
    ),
    ReviewPost(
      userImage: avatar1,
      content: reviewContentText,
    ),
    ReviewPost(
      userImage: avatar2,
      content: reviewContentText,
    ),
    ReviewPost(
      userImage: avatar3,
      content: reviewContentText,
    ),
    ReviewPost(
      userImage: avatar1,
      content: reviewContentText,
    ),
    ReviewPost(
      userImage: avatar2,
      content: reviewContentText,
    ),
    ReviewPost(
      userImage: avatar3,
      content: reviewContentText,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(height),
      width: width,
      child: Padding(
        padding: EdgeInsets.fromLTRB(getSize(50), 0, getSize(50), 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: getTextWithStyle(
                text: "Hear from our customers from Top YouTube Channel",
                size: 20,
                fontWeight: FontWeight.normal,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: getSize(64),
            ),
            Stack(
              children: [
                Positioned(
                  top: getVerticalSize(62),
                  width: width * 0.68,
                  child: SvgPicture.asset(
                    ovel2,
                    width: getHorizontalSize(550),
                  ),
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "We’ve taught ",
                      style: TextStyle(
                        fontSize: getHorizontalSize(56),
                        color: colorSecondary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    WidgetSpan(
                      child: Image.asset(
                        men1,
                        width: getHorizontalSize(56),
                      ),
                    ),
                    TextSpan(
                      text: " over 3,000 creators\n",
                      style: TextStyle(
                        fontSize: getHorizontalSize(56),
                        color: colorSecondary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: "how to ",
                      style: TextStyle(
                        fontSize: getHorizontalSize(56),
                        color: colorSecondary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    WidgetSpan(
                      child: Image.asset(
                        men2,
                        width: getHorizontalSize(56),
                      ),
                    ),
                    TextSpan(
                      text: " grow on any Platform ",
                      style: TextStyle(
                        fontSize: getHorizontalSize(56),
                        color: colorSecondary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    WidgetSpan(
                      child: Image.asset(
                        men2,
                        width: getHorizontalSize(56),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
            SizedBox(
              height: getSize(64),
            ),
            Stack(
              children: [
                Positioned(
                  top: height * 0.08,
                  width: width * 0.32,
                  child: SvgPicture.asset(
                    line1,
                    width: getHorizontalSize(170),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: getSize(20)),
                  child: getTextWithStyle(
                    text: "Now we can do it for you",
                    size: 56,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                getTextWithStyle(
                  text: "See what our famous clients write about us:",
                  size: 32,
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.center,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      leftArrow,
                      width: getHorizontalSize(40),
                    ),
                    SizedBox(
                      width: getSize(16),
                    ),
                    SvgPicture.asset(
                      rightArrow,
                      width: getHorizontalSize(40),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: getSize(24),
            ),
            SizedBox(
              height: height * 0.30,
              // Adjust container height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: sampleReviewPosts.length,
                // Replace with your data
                itemBuilder: (context, index) {
                  return ReviewPostItem(post: sampleReviewPosts[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReviewPost {
  final String userImage;
  final String content;

  ReviewPost({required this.userImage, required this.content});
}

class ReviewPostItem extends StatelessWidget {
  final ReviewPost post;

  const ReviewPostItem({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(getSize(10)),
      decoration: const BoxDecoration(
          color: colorPrimary,
          borderRadius: BorderRadius.all(Radius.circular(16))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(post.userImage,width: getHorizontalSize(40),),
          SizedBox(
            height: getSize(20),
          ),
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
