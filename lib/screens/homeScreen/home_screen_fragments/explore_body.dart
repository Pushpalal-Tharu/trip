import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trip/screens/homeScreen/home_screen_fragments/template.dart';

import '../../../widgets/expandable_container.dart';

class ExploreBody extends StatefulWidget {
  const ExploreBody({super.key});

  @override
  State<ExploreBody> createState() => _ExplorePageBodyState();
}

class _ExplorePageBodyState extends State<ExploreBody> {
  PageController pageController = PageController();

  List template = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 240,
          child: PageView.builder(
            controller: pageController,
            itemCount: 3,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            },
          ),
        ),
        SmoothPageIndicator(
          controller: pageController, // PageController
          count: 3,
          effect: const WormEffect(
            activeDotColor: Color.fromARGB(249, 14, 8, 88),
            dotWidth: 8.0,
            dotHeight: 8.0,
          ),
          onDotClicked: (index) {},
        ),
        Container(
            margin: const EdgeInsets.only(top: 24, left: 16, right: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Your Trip Categories",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFF222034),
                        letterSpacing: 0.18,
                      ),
                    ),
                    Container(
                      child: const Row(
                        children: [
                          Text(
                            "See more",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              color: Color(0xFF3B3863),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 18,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            )),
        Container(
          height: 95,
          // color: Colors.green,
          margin: const EdgeInsets.only(left: 16, right: 16, top: 12),
          child: ListView.builder(
            itemCount: 7,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(left: 8, right: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          image: DecorationImage(
                            image: ExactAssetImage(
                                "assets/images/trip_category0.png"),
                          )),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Hiking/Trekking",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Container(
            margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Templates",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFF222034),
                        letterSpacing: 0.18,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Template(
                                    template: template,
                                  )),
                        );
                      },
                      child: Container(
                        child: const Row(
                          children: [
                            Text(
                              "See more",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                color: Color(0xFF3B3863),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 18,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )),
        ListView.builder(
          itemCount: template.length > 3 ? 3 : template.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return ExpandableContainer(
              bodyText:
                  "Don't wait-start your 1-day trip now with this template to take you on an unforgettable journey.",
              titalText: "Template for 1-day group trip.",
              icon: Icons.route,
              firstButtonText: "Apply Now",
              secondButtonText: "Read Manual",
              size: 12,
            );
          },
        )
      ],
    );
  }

  Widget _buildPageItem(int position) {
    return Stack(
      children: [
        Container(
          height: 232,
          margin: const EdgeInsets.only(left: 16, right: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage("assets/images/home_page_slider.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            height: 43,
            margin: const EdgeInsets.only(
                left: 25, right: 34, bottom: 10, top: 120),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.white,
            ),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Start Adventure Today",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: 212,
            width: 200,
            margin: const EdgeInsets.only(
                left: 150, right: 20, bottom: 10, top: 32),
            child: const Text(
              "Let's Make Our Life so a Life",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  fontSize: 24,
                  color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
