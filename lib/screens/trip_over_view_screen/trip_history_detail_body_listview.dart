// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import '../../../../widgets/advanced_line.dart';
import '../../../../widgets/line_painter.dart';
import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';

class TripHistoryDetailBodyListview extends StatelessWidget {
  TripHistoryDetailBodyListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HistoryAvailable();
  }
}

class HistoryAvailable extends StatelessWidget {
  HistoryAvailable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .60,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 8,
            ),
            child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              physics: const AlwaysScrollableScrollPhysics(),
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
                              line: DashedLine(dashSize: 4, gapSize: 4),
                              paintDef: Paint()
                                ..strokeWidth = 1.5
                                ..color = index == 0
                                    ? const Color(0x0000000f)
                                    : Colors.black
                                ..strokeCap = StrokeCap.round,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10.0),
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
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Card(
                            color: Colors.white,
                            child: SizedBox(
                              height: 80,
                              width: MediaQuery.of(context).size.width * .95,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  TripTakerImage(),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                  Padding(
                                    padding: const EdgeInsets.only(right: 6.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          children: [
                                            SmallText(
                                              text: "1.05 Hrs",
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFDBDFAA),
                                                borderRadius:
                                                    BorderRadiusDirectional
                                                        .circular(16),
                                              ),
                                              child: const Icon(
                                                  Icons.bike_scooter_outlined),
                                            )
                                          ],
                                        ),
                                        SmallText(
                                            text: "Kathmandu, Sinamangal"),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        SmallText(text: "Malekhu, Dhading")
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
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: SizedBox(
            width: double.maxFinite,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xFF222034)),
                ),
                onPressed: () {},
                child: const Text(
                  "Create New Trip",
                  style: TextStyle(color: Colors.white),
                )),
          ),
        )
      ],
    );
  }
}

class TripTakerImage extends StatelessWidget {
  TripTakerImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 5,
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
          margin: const EdgeInsets.only(left: 40),
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
            left: 20,
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
    );
  }
}

class NoHistoryAvailable extends StatelessWidget {
  int num;
  NoHistoryAvailable({
    Key? key,
    required this.num,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(image: AssetImage("assets/images/list_view_error.png")),
          // Spacer(),
          SizedBox(
            height: 120,
            width: 240,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8, right: 8, bottom: 8),
                  child: BigText(
                    text: "No History Available",
                    size: 24,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8, right: 8, bottom: 18),
                  child: SmallText(
                    text:
                        "History of Day-$num that you have aligned will show here.",
                    size: 14,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
