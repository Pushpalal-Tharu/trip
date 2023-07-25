import 'package:flutter/material.dart';
import 'package:trip/screens/trip_over_view_screen/trip_history_body.dart';
import 'package:trip/widgets/big_text.dart';
import 'current_trip_body.dart';

class CurrentTripScreen extends StatefulWidget {
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
      body: Container(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(isSelected.length, (index) {
                  return GestureDetector(
                      onTap: () {
                        //set the toggle logic
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
            Padding(
              padding: const EdgeInsets.only(right: 12, left: 12),
              child: Divider(),
            ),
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemCount: 2,
                itemBuilder: (context, position) {
                  return _buildPageItem(position);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  getView(int index) {
    // if (index == 0) {
    //   return BigText(
    //     text: "Current Trip",
    //     color: isSelected[0] ? Colors.white : Colors.black,
    //   );
    // } else {
    //   return BigText(
    //     text: "Trip History",
    //     color: isSelected[1] ? Colors.white : Colors.black,
    //   );
    // }

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
      return CurrentTripBody();
    } else {
      return TripHistoryBody();
    }
    ;
  }
}
