import 'package:flutter/material.dart';
import 'package:trip/widgets/small_text.dart';

class ExpandableContainer extends StatelessWidget {
  final IconData icon;
  final String titalText;
  final String bodyText;
  final String firstButtonText;
  final String secondButtonText;
  double size;
  TextOverflow overflow;

  ExpandableContainer({
    super.key,
    required this.icon,
    required this.titalText,
    required this.bodyText,
    required this.firstButtonText,
    required this.secondButtonText,
    required this.size,
    this.overflow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
      // height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xFFDBDFAA),
      ),
      child: Theme(
        data: ThemeData().copyWith(
          dividerColor: Colors.transparent,
        ),
        child: ExpansionTile(
          iconColor: Color(0xFF222034),
          leading: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Color(0xFF222034),
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          title: Text(
            titalText,
            overflow: overflow,
            maxLines: 1,
            style: TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
              color: Color(0xFF222034),
            ),
          ),
          tilePadding: EdgeInsets.all(8),
          subtitle: SmallText(text: bodyText),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 35,
                  margin: EdgeInsets.only(bottom: 15, top: 10),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Color(0xFF222034),
                      shape: StadiumBorder(
                        side: BorderSide(
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      firstButtonText,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 35,
                  margin: EdgeInsets.only(bottom: 15, top: 10),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Color(0xFF222034),
                      shape: StadiumBorder(),
                    ),
                    onPressed: () {},
                    child: Text(
                      secondButtonText,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
