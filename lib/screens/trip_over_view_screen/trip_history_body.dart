import 'package:flutter/material.dart';
import 'package:trip/screens/trip_over_view_screen/trip_history_body_listview.dart';

class TripHistoryBody extends StatelessWidget {
  const TripHistoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          StaticHeader(),
          TripHistoryBodyListview(),
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
