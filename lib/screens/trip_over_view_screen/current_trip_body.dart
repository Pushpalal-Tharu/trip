import 'package:flutter/material.dart';
import '../../widgets/big_text.dart';
import 'current_trip_body_listview.dart';

class CurrentTripBody extends StatelessWidget {
  const CurrentTripBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                          shape: OvalBorder(
                            side: BorderSide(
                                width: 0.25, color: Color(0xFF007AFF)),
                          ),
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
                          shape: OvalBorder(
                            side: BorderSide(
                                width: 0.25, color: Color(0xFF007AFF)),
                          ),
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
                          shape: OvalBorder(
                            side: BorderSide(
                                width: 0.25, color: Color(0xFF007AFF)),
                          ),
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
            padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
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
            child: CurrentTripBodyListview(),
          )
        ],
      ),
    );
  }
}
