import 'package:flutter/material.dart';
import 'package:trip/screens/trip_over_view_screen/trip_history_detail_body_listview.dart';
import '../../widgets/big_text.dart';

class TripHistoryDetailBody extends StatefulWidget {
  TripHistoryDetailBody({super.key});

  @override
  State<TripHistoryDetailBody> createState() => _TripHistoryDetailBodyState();
}

class _TripHistoryDetailBodyState extends State<TripHistoryDetailBody> {
  List<bool> isSelected = [
    true,
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 12, right: 12),
              height: 90,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xFFDBDFAA),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            // color: Colors.red,
                            borderRadius: BorderRadius.circular(6),
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/game-icons_journey.png",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Manaslu Trekk form Pokhara",
                            style: TextStyle(
                              color: const Color(0xFF222034),
                              overflow: TextOverflow.ellipsis,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Kathmandu to Manaslu Hill Region",
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "From 01/03/2023 to 05/03/2023",
                            style: TextStyle(
                              color: const Color(0xFF222034),
                              overflow: TextOverflow.ellipsis,
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            left: 0,
                            top: 24,
                          ),
                          width: 34,
                          height: 34,
                          decoration: const ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://images.pexels.com/photos/17330511/pexels-photo-17330511/free-photo-of-city-road-sunset-fashion.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                              fit: BoxFit.fill,
                            ),
                            shape: OvalBorder(),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 7,
                            top: 24,
                          ),
                          width: 34,
                          height: 34,
                          decoration: const ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://helpx.adobe.com/content/dam/help/en/photoshop/using/convert-color-image-black-white/jcr_content/main-pars/before_and_after/image-before/Landscape-Color.jpg"),
                              fit: BoxFit.fill,
                            ),
                            shape: OvalBorder(),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 14, top: 24),
                          width: 34,
                          height: 34,
                          decoration: const ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"),
                              fit: BoxFit.fill,
                            ),
                            shape: OvalBorder(),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              height: 24,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: const Color(0xFF222034)),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 4,
                                  bottom: 4,
                                  left: 8,
                                  right: 8,
                                ),
                                child: Text(
                                  "14+",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                left: 24,
                              ),
                              width: 34,
                              height: 34,
                              decoration: const ShapeDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4CtaDk3U49ukzwQTk5h6n1mwtWT9HULw-piOF2eF4&s"),
                                  fit: BoxFit.fill,
                                ),
                                shape: OvalBorder(),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12, left: 12),
              child: Divider(),
            ),
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
                          left: 8,
                          right: 8,
                        ),
                        child: Container(
                          height: 35,
                          width: 80,
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
              child: TripHistoryDetailBodyListview(),
            ),
          ],
        ),
      ),
    );
  }

  getView(int index) {
    List<Widget> textList = [
      BigText(
        text: "Day 01",
        color: isSelected[index] ? Colors.white : Colors.black,
      ),
      BigText(
        text: "Day 02",
        color: isSelected[index] ? Colors.white : Colors.black,
      ),
      BigText(
        text: "Day 03",
        color: isSelected[index] ? Colors.white : Colors.black,
      ),
      BigText(
        text: "Day 04",
        color: isSelected[index] ? Colors.white : Colors.black,
      ),
      BigText(
        text: "Day 05",
        color: isSelected[index] ? Colors.white : Colors.black,
      ),
      BigText(
        text: "Day 06",
        color: isSelected[index] ? Colors.white : Colors.black,
      ),
    ];
    return textList[index];
  }
}
