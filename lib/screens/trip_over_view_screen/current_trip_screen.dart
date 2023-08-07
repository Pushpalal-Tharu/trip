import 'package:flutter/material.dart';
import '../../widgets/big_text.dart';
import 'current_trip_body.dart';
import 'trip_history_body.dart';

class CurrentTripScreen extends StatefulWidget {
  const CurrentTripScreen({super.key});

  @override
  _CurrentTripScreenState createState() => _CurrentTripScreenState();
}

class _CurrentTripScreenState extends State<CurrentTripScreen> {
  List<bool> isSelected = [
    true,
    false,
  ];

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F6FF),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFDBDFAA),
        title: const Text("Trip Overview"),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(isSelected.length, (index) {
                  return GestureDetector(
                      onTap: () {
                        setState(() {
                          pageController.animateToPage(index,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.linear);
                          for (int indexBtn = 0;
                              indexBtn < isSelected.length;
                              indexBtn++) {
                            if (indexBtn == index) {
                              isSelected[indexBtn] = true;
                            } else {
                              isSelected[indexBtn] = false;
                            }
                          }
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 8, bottom: 8),
                        child: Container(
                          height: 40,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: isSelected[index]
                                ? const Color(0xFF222034)
                                : const Color(0xFFD6D6D6),
                          ),
                          child: Center(
                            child: getView(index),
                          ),
                        ),
                      ));
                }),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 12, left: 12),
            child: Divider(),
          ),
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemCount: 2,
              onPageChanged: (index) {
                setState(() {
                  for (int indexBtn = 0;
                      indexBtn < isSelected.length;
                      indexBtn++) {
                    if (indexBtn == index) {
                      isSelected[indexBtn] = true;
                    } else {
                      isSelected[indexBtn] = false;
                    }
                  }
                });
              },
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              },
            ),
          ),
        ],
      ),
    );
  }

  getView(int index) {
    List<Widget> textList = [
      BigText(
        text: "Current Trip",
        color: isSelected[index] ? Colors.white : Colors.black,
      ),
      BigText(
        text: "Trip History",
        color: isSelected[index] ? Colors.white : Colors.black,
      ),
    ];
    return textList[index];
  }

  Widget _buildPageItem(int position) {
    if (position == 0) {
      return const CurrentTripBody();
    } else {
      return const TripHistoryBody();
    }
  }
}
