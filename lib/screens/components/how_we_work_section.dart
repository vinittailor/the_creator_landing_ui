import 'package:creator_landing_page/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constant.dart';

class HowWeWorkSection extends StatefulWidget {
  const HowWeWorkSection({super.key});

  @override
  State<HowWeWorkSection> createState() => _HowWeWorkSectionState();
}

class _HowWeWorkSectionState extends State<HowWeWorkSection> {



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(height*3),
      width: width,
      child: Stack(
        children: [
          //Center Widget
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: width * 0.6,
              alignment: Alignment.topCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: getSize(30),
                  ),
                  getTextWithStyle(
                    text: "We do it for you. No more\nstruggling to grow on\nany Platform",
                    size: 56,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: getSize(30),
                  ),
                  SizedBox(
                    width: width *0.5,
                    child: getTextWithStyle(
                      text:
                      "Work with our expert strategists\nwriters, editors, and producers to create content\nthat transforms your content",
                      size: 30,
                      fontWeight: FontWeight.w500,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: getSize(30),
                  ),
                  SizedBox(
                    width: width *0.4,
                    child: getTextWithStyle(
                      text:
                      "No managing a team of freelancers or spending countless hours trying to master all the skillsets Platform requires - all you need is The Creator",
                      size: 20,
                      fontWeight: FontWeight.normal,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: getSize(50),
                  ),
                const  ServiceItem(
                      headline: '1# Research & Analysis',
                      text: "Our agency's research-driven approach involves gathering insights into our clients' industries, competitors, and target audiences to develop tailored strategies that deliver exceptional results. This deep understanding allows us to create innovative and effective campaigns that resonate with our clients' audiences.",
                      imageUrl: womenImg2,
                      isLeft: true,
                  ),
                  const  ServiceItem(
                    headline: '2# Concept development:',
                    text: "Based on the brief and research, the agency's creative team generates ideas for the campaign. These concepts are presented to the client for feedback and refinement.",
                    imageUrl: womenImg3,
                    isLeft: false,
                  ),
                  const  ServiceItem(
                    headline: '3# Design and execution:',
                    text: "Once the concept is approved, the agency's designers and developers bring it to life. This includes creating visual assets, writing copy, and developing multimedia content.",
                    imageUrl: womenImg4,
                    isLeft: true,
                  ),
                ],
              ),
            ),
          ),

          //Left side Widget
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              // width: width * 0.2,
              child: Stack(
                children: [
                  Positioned(
                      top: 0,
                      child: SvgPicture.asset(leftLine3,height: getVerticalSize(400),)),
                  Positioned(
                    top: -100,
                    child: Image.asset(
                      hands3,
                      width: getHorizontalSize(312),
                    ),
                  ),
                  Positioned(
                    top: height * 0.4,
                    left: width * 0.2,
                    child: Image.asset(
                      like1,
                      width: getHorizontalSize(120),
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
              // width: width * 0.2,
              child: Stack(
                children: [
                  Positioned(
                    top: getVerticalSize(250),
                    right: 0,
                    child: Image.asset(
                      hands4,
                      width: getHorizontalSize(312),
                    ),
                  ),
                  Positioned(
                    top: height *0.1,
                      right: 0,
                      child: SvgPicture.asset(rightLine2,height: getVerticalSize(400),)),

                  Positioned(
                    top: height * 0.2,
                    right: width * 0.15,
                    child: Image.asset(
                      like2,
                      width: getHorizontalSize(120),
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


class ServiceItem extends StatelessWidget {
  final String headline;
  final String text;
  final String imageUrl;
  final bool isLeft;

  const ServiceItem({super.key, required this.headline, required this.text, required this.imageUrl, required this.isLeft});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(500),
      child: Row(
        children: [
          isLeft ?  Column(
            children: [
              getTextWithStyle(
                text:
                headline,
                size: 40,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.left,
              ),

              const SizedBox(height: 10), // Add spacing between headline and text
              SizedBox(
                width: width*0.3,
                child: getTextWithStyle(
                  text: text,
                  size: 20,
                  fontWeight: FontWeight.normal,
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ) : Image.asset(
            imageUrl,
            width: getHorizontalSize(400), // Adjust image width as needed
          ),
          const SizedBox(width: 10), // Add spacing before image
          !isLeft ? Column(
            children: [
              getTextWithStyle(
                text:
                headline,
                size: 40,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.left,
              ),

              const SizedBox(height: 10), // Add spacing between headline and text
              SizedBox(
                width: width*0.3,
                child: getTextWithStyle(
                  text: text,
                  size: 20,
                  fontWeight: FontWeight.normal,
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ) :Image.asset(
            imageUrl,
            width: getHorizontalSize(400), // Adjust image width as needed
          ),
        ],
      ),
    );
  }
}