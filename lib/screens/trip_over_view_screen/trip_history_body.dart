import 'package:flutter/material.dart';

import '../../widgets/advanced_line.dart';
import '../../widgets/big_text.dart';
import '../../widgets/line_painter.dart';
import '../../widgets/small_text.dart';
import 'current_trip_body_listview.dart';

class TripHistoryBody extends StatelessWidget {
  const TripHistoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          StaticHeader(),
          Container(
            height: MediaQuery.of(context).size.height * .70,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 6,
              ),
              child: ListView.builder(
                itemCount: 20,
                shrinkWrap: true,
                physics: AlwaysScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 44,
                              width: 12.0,
                              alignment: Alignment.centerRight,
                              child: AdvancedLine(
                                direction: Axis.vertical,
                                line: DashedLine(dashSize: 4, gapSize: 4),
                                paintDef: Paint()
                                  ..strokeWidth = 1.5
                                  ..color =
                                      index == 0 ? Color(0xf) : Colors.black
                                  ..strokeCap = StrokeCap.round,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
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
                                line: DashedLine(dashSize: 4, gapSize: 4),
                                paintDef: Paint()
                                  ..strokeWidth = 1.5
                                  ..strokeCap = StrokeCap.round,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Card(
                            color: Color(0xFFDBDFAA),
                            child: Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width * .95,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 8, left: 16.0),
                                    child: Stack(
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 0),
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
                                              left: 35, top: 12),
                                          child: Text(
                                            "14+",
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          BigText(
                                            text: "Manaslu Trekk from Pokhara",
                                            color: Color(0xFF222034),
                                            size: 16,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 16.0, left: 8),
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          SmallText(
                                            text: "01/03/2023",
                                            size: 14,
                                            color: Color(0xFF222034),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
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
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 16),
            child: Container(
              width: double.maxFinite,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFF222034)),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Create New Trip",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          )
        ],
      ),
    );
  }
}

class StaticHeader extends StatelessWidget {
  const StaticHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22, right: 10),
      child: Container(
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xFF222034),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 35,
              alignment: Alignment.center,
              // color: Colors.red,
              child: Text(
                "Partakers",
                style: TextStyle(
                  color: const Color(0xFFDBDFAA),
                  fontSize: 14,
                ),
              ),
            ),
            VerticalDivider(
              endIndent: 11,
              indent: 11,
            ),
            Container(
              height: 35,
              alignment: Alignment.center,
              // color: Colors.red,
              child: Text(
                "Trip’s Name",
                style: TextStyle(
                  color: const Color(0xFFDBDFAA),
                  fontSize: 14,
                ),
              ),
            ),
            VerticalDivider(
              endIndent: 11,
              indent: 11,
            ),
            Container(
              height: 35,
              alignment: Alignment.center,
              // color: Colors.red,
              child: Text(
                "Trip’s Date",
                style: TextStyle(
                  color: const Color(0xFFDBDFAA),
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}