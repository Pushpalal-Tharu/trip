import 'package:flutter/material.dart';

import 'trip_history_body_listview.dart';

class TripHistoryBody extends StatelessWidget {
  const TripHistoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const StaticHeader(),
        const TripHistoryBodyListview(),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 16),
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
              child: const Text(
                "Partakers",
                style: TextStyle(
                  color: Color(0xFFDBDFAA),
                  fontSize: 14,
                ),
              ),
            ),
            const VerticalDivider(
              endIndent: 11,
              indent: 11,
            ),
            Container(
              height: 35,
              alignment: Alignment.center,
              // color: Colors.red,
              child: const Text(
                "Trip’s Name",
                style: TextStyle(
                  color: Color(0xFFDBDFAA),
                  fontSize: 14,
                ),
              ),
            ),
            const VerticalDivider(
              endIndent: 11,
              indent: 11,
            ),
            Container(
              height: 35,
              alignment: Alignment.center,
              // color: Colors.red,
              child: const Text(
                "Trip’s Date",
                style: TextStyle(
                  color: Color(0xFFDBDFAA),
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
