import 'dart:async';

import 'package:creator_landing_page/utils/colors.dart';
import 'package:creator_landing_page/utils/constant.dart';
import 'package:creator_landing_page/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CharitySection extends StatefulWidget {
  const CharitySection({super.key});

  @override
  State<CharitySection> createState() => _CharitySectionState();
}

class _CharitySectionState extends State<CharitySection> {
  final iconData = [
    const IconItem(
      iconPath: 'assets/images/logo_1.svg',
    ),
    const IconItem(
      iconPath: 'assets/images/logo_2.svg',
    ),
    const IconItem(
      iconPath: 'assets/images/logo_3.svg',
    ),
    const IconItem(
      iconPath: 'assets/images/logo_4.svg',
    ),
    const IconItem(
      iconPath: 'assets/images/logo_5.svg',
    ),
  ];

  final iconData2 = [
    const IconItem(
      iconPath: 'assets/images/logo_6.svg',
    ),
    const IconItem(
      iconPath: 'assets/images/logo_7.svg',
    ),
    const IconItem(
      iconPath: 'assets/images/logo_8.svg',
    ),
    const IconItem(
      iconPath: 'assets/images/logo_9.svg',
    ),
    const IconItem(
      iconPath: 'assets/images/logo_10.svg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(height),
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: height * 0.58,
            width: width * 0.3,
            decoration: const BoxDecoration(
              color: colorPrimary,
              borderRadius: BorderRadius.all(Radius.circular(16))
            ),
            child: Column(
              children: [
                SizedBox(
                  height: getVerticalSize(100),
                  child: InfiniteScrollList(
                    iconData: iconData,
                    scrollDelay: const Duration(milliseconds: 90),
                  ),
                ),
                SizedBox(
                  height: getVerticalSize(100),
                  child: InfiniteScrollList(
                    iconData: iconData2,
                    scrollDelay: const Duration(milliseconds: 90),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                  child: getTextWithStyle(text: "We've participated in events for children's education, health initiatives, and disaster relief. We're dedicated to ongoing involvement and exploring new opportunities.", size: 20),
                )
              ],
            ),
          ),
          SizedBox(width: width * 0.05,),
          Container(
            height: height * 0.58,
            width: width * 0.3,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16))
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  getTextWithStyle(text: "Charity", size: 56),
                  getTextWithStyle(text: "Our creative agency supports charities globally, using our skills in branding, marketing, and social media to make a positive impact on local communities and raise awareness about important causes. ", size: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IconItem {
  final String iconPath; // Path to the icon image

  const IconItem({
    required this.iconPath,
  });
}

class InfiniteScrollList extends StatefulWidget {
  final List<IconItem> iconData; // List of your icons
  Duration? scrollDelay =
      const Duration(milliseconds: 500); // Delay between automatic scrolls (optional)

  InfiniteScrollList({super.key, required this.iconData, required this.scrollDelay});

  @override
  _InfiniteScrollListState createState() => _InfiniteScrollListState();
}

class _InfiniteScrollListState extends State<InfiniteScrollList> {
  late ScrollController _scrollController; // Create a single scroll controller
  Timer? _autoScrollTimer;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController(); // Initialize the scroll controller
    _autoScrollTimer = Timer.periodic(
      widget.scrollDelay ?? const Duration(seconds: 1), // Default 3 seconds
      (_) => _handleAutoScroll(),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose(); // Dispose of the scroll controller
    _autoScrollTimer?.cancel(); // Cancel the automatic scroll timer
    super.dispose();
  }

  void _handleAutoScroll() {
    _scrollController.animateTo(
      _scrollController.position.pixels + 50,
      // Adjust scroll distance as needed
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
    _handleScroll();
  }

  void _handleScroll() {

    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent) {
      // Reset scroll position to the beginning for continuous loop
      _scrollController.jumpTo(_scrollController.position.minScrollExtent);
    }

    setState(() {}); // Update UI based on scroll position (optional)
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // Verify controller assignment
      controller: _scrollController,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      // Adjust as needed for visibility
      itemCount: widget.iconData.length * 10,
      // Double items for looping
      itemBuilder: (context, index) {
        final int effectiveIndex = index % widget.iconData.length;
        final item = widget.iconData[effectiveIndex];
        return Container(
          width: 70.0,
          // Adjust width as needed
          height: 70.0,
          // Add height for debugging (optional)
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          // Add background color for debugging
          child: SvgPicture.asset(
              item.iconPath), // Replace with your icon widget
        );
      },
    );
  }
}

class IconListItem extends StatelessWidget {
  final IconItem item;

  const IconListItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      // Add spacing between icons
      child: Column(
        children: [
          SvgPicture.asset(
            item.iconPath,
            width: getHorizontalSize(50), // Adjust icon size as needed
            height: getVerticalSize(50), // Adjust icon size as needed
          ),
        ],
      ),
    );
  }
}

