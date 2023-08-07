import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../widgets/advanced_line.dart';
import '../../../../widgets/line_painter.dart';
import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';
import 'trip_history_detail_body.dart';

class TripHistoryBodyListview extends StatelessWidget {
  const TripHistoryBodyListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .67,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 6,
        ),
        child: ListView.builder(
          itemCount: 20,
          shrinkWrap: true,
          physics: const AlwaysScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.to(const TripHistoryDetailBody());
              },
              child: Padding(
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
                      child: Card(
                        color: const Color(0xFFDBDFAA),
                        child: SizedBox(
                          height: 80,
                          width: MediaQuery.of(context).size.width * .95,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 8, left: 16.0),
                                child: Stack(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(left: 0),
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
                                      child: const Text(
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
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    BigText(
                                      text: "Manaslu Trekk from Pokhara",
                                      color: Color(0xFF222034),
                                      size: 16,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 16.0, left: 8),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SmallText(
                                      text: "01/03/2023",
                                      size: 14,
                                      color: Color(0xFF222034),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
