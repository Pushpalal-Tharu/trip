import 'package:flutter/material.dart';

import '../../../../../widgets/big_text.dart';
import '../../../../../widgets/expandable_container.dart';
import '../../../../../widgets/small_text.dart';

class Template extends StatefulWidget {
  const Template({super.key});

  @override
  State<Template> createState() => _TemplateState();
}

class _TemplateState extends State<Template> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDBDFAA),
      body: Container(
          decoration: const BoxDecoration(color: Colors.white),
          margin: const EdgeInsets.only(
            top: 30,
          ),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
                    child: BigText(text: "Pre-built Templates")),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16, right: 16),
                  child: SmallText(
                      text:
                          "Join us for a day trip that promises to ignite your sense of wonder and leave you with a renewed appreciation for the beauty that surrounds us, everywhere and everyone."),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 500,
                  // height: MediaQuery.of(context).size.height,
                  // width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: 3,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return ExpandableContainer(
                        bodyText:
                            "Don't wait-start your 1-day trip now with this template to take you on an unforgettable journey.",
                        titalText: "Template for 1-day group trip.",
                        icon: Icons.route,
                        firstButtonText: "Apply Now",
                        secondButtonText: "Read Manual",
                        size: 12,
                      );
                    },
                  ),
                )
              ],
            ),
          )),
    );
  }
}
