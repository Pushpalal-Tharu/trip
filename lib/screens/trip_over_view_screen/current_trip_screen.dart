import 'package:flutter/material.dart';
import 'package:trip/widgets/big_text.dart';
import 'package:trip/widgets/small_text.dart';

import '../../widgets/advanced_line.dart';
import '../../widgets/line_painter.dart';

class CurrentTripScreen extends StatefulWidget {
  @override
  _CurrentTripScreenState createState() => _CurrentTripScreenState();
}

class _CurrentTripScreenState extends State<CurrentTripScreen> {
  List<bool> isSelected = [
    true,
    false,
  ];

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
                child: Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 12, right: 12),
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xFFDBDFAA),
                    ),
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
                              ),
                              width: 35,
                              height: 35,
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
                              margin: const EdgeInsets.only(left: 15),
                              width: 35,
                              height: 35,
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
                            Container(
                              margin: const EdgeInsets.only(
                                left: 30,
                              ),
                              width: 35,
                              height: 35,
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
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 12, right: 12, top: 12),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: BigText(text: "In-trip Activities"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Icon(Icons.share),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Icon(Icons.close_fullscreen),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: ListView.builder(
                          itemCount: 10,
                          shrinkWrap: true,
                          physics: AlwaysScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 44,
                                        width: 12.0,
                                        alignment: Alignment.centerRight,
                                        child: AdvancedLine(
                                          direction: Axis.vertical,
                                          line: DashedLine(
                                              dashSize: 4, gapSize: 4),
                                          paintDef: Paint()
                                            ..strokeWidth = 1.5
                                            ..color = index == 0
                                                ? Color(0xf)
                                                : Colors.black
                                            ..strokeCap = StrokeCap.round,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: CircleAvatar(
                                          radius: 5,
                                          backgroundColor: Colors.green,
                                        ),
                                      ),
                                      Container(
                                        height: 44,
                                        width: 12.0,
                                        alignment: Alignment.centerRight,
                                        child: AdvancedLine(
                                          direction: Axis.vertical,
                                          line: DashedLine(
                                              dashSize: 4, gapSize: 4),
                                          paintDef: Paint()
                                            ..strokeWidth = 1.5
                                            ..strokeCap = StrokeCap.round,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Card(
                                        color: Colors.white,
                                        child: Container(
                                          height: 80,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .95,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Stack(
                                                children: [
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                      left: 5,
                                                    ),
                                                    width: 35,
                                                    height: 35,
                                                    decoration:
                                                        const ShapeDecoration(
                                                      image: DecorationImage(
                                                        image: NetworkImage(
                                                            "https://helpx.adobe.com/content/dam/help/en/photoshop/using/convert-color-image-black-white/jcr_content/main-pars/before_and_after/image-before/Landscape-Color.jpg"),
                                                        fit: BoxFit.fill,
                                                      ),
                                                      shape: OvalBorder(),
                                                      shadows: [
                                                        BoxShadow(
                                                          color:
                                                              Color(0x3F000000),
                                                          blurRadius: 4,
                                                          offset: Offset(0, 4),
                                                          spreadRadius: 0,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            left: 40),
                                                    width: 35,
                                                    height: 35,
                                                    decoration:
                                                        const ShapeDecoration(
                                                      image: DecorationImage(
                                                        image: NetworkImage(
                                                            "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"),
                                                        fit: BoxFit.fill,
                                                      ),
                                                      shape: OvalBorder(),
                                                      shadows: [
                                                        BoxShadow(
                                                          color:
                                                              Color(0x3F000000),
                                                          blurRadius: 4,
                                                          offset: Offset(0, 4),
                                                          spreadRadius: 0,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                      left: 20,
                                                    ),
                                                    width: 35,
                                                    height: 35,
                                                    decoration:
                                                        const ShapeDecoration(
                                                      image: DecorationImage(
                                                        image: NetworkImage(
                                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4CtaDk3U49ukzwQTk5h6n1mwtWT9HULw-piOF2eF4&s"),
                                                        fit: BoxFit.fill,
                                                      ),
                                                      shape: OvalBorder(),
                                                      shadows: [
                                                        BoxShadow(
                                                          color:
                                                              Color(0x3F000000),
                                                          blurRadius: 4,
                                                          offset: Offset(0, 4),
                                                          spreadRadius: 0,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    BigText(
                                                      text: "Bike Riding",
                                                    ),
                                                    SmallText(text: "From"),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    SmallText(text: "To")
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                      child: Row(
                                                        children: [
                                                          SmallText(
                                                            text: "1.05 Hrs",
                                                          ),
                                                          SizedBox(
                                                            width: 5,
                                                          ),
                                                          Container(
                                                            height: 30,
                                                            width: 30,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: const Color(
                                                                  0xFFDBDFAA),
                                                              borderRadius:
                                                                  BorderRadiusDirectional
                                                                      .circular(
                                                                          16),
                                                            ),
                                                            child: Icon(Icons
                                                                .bike_scooter_outlined),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    SmallText(
                                                        text:
                                                            "Kathmandu, Sinamangal"),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    SmallText(
                                                        text:
                                                            "Malekhu, Dhading")
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ))
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
}
