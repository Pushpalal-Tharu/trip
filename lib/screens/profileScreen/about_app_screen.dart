import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:trip/widgets/big_text.dart';

class AboutAppScreen extends StatefulWidget {
  const AboutAppScreen({super.key});

  @override
  State<AboutAppScreen> createState() => _AboutAppScreenState();
}

class _AboutAppScreenState extends State<AboutAppScreen> {
  String _appVersion = "";
  @override
  void initState() {
    super.initState();
    _getAppVersion();
  }

  Future<void> _getAppVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    _appVersion = packageInfo.version;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFDBDFAA),
        title: const Text("About App"),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              // color: Colors.green,
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * 0.34,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // image inside circle
                  Stack(
                    children: [
                      Positioned(
                        child: Container(
                          margin: EdgeInsets.only(top: 16),
                          height: 110,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: const Color(0xFFDBDFAA),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 20,
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white,
                              image: DecorationImage(
                                  image: ExactAssetImage(
                                      "assets/images/circle_logo.png"))),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  BigText(
                    text: "Trip Syncer",
                    size: 26,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16, right: 16),
                    child: RichText(
                      text: TextSpan(
                        text: 'Trip Syncer\t',
                        style: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                'is becoming one of world’s largest online services with all the information about your custom journey mapping from A to B to Z by any means of transport worldwide.',
                            style: TextStyle(
                                color: Color.fromARGB(255, 34, 32, 52)
                                    .withOpacity(0.6),
                                fontSize: 15,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    // margin: EdgeInsets.only(left: 16, right: 16),
                    child: Divider(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 16),
                    child: Container(
                      margin: EdgeInsets.only(left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "App version",
                            style: TextStyle(
                              color: Color.fromARGB(255, 59, 58, 58),
                              fontStyle: FontStyle.normal,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            _appVersion,
                            style: TextStyle(
                              color: Color.fromARGB(255, 124, 124, 124),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // margin: EdgeInsets.only(left: 16, right: 16),
                    child: Divider(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 16),
                      child: Container(
                        margin: EdgeInsets.only(left: 16, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "License",
                              style: TextStyle(
                                color: Color.fromARGB(255, 59, 58, 58),
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Read license agreement",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 124, 124, 124),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                  color: Color.fromARGB(255, 124, 124, 124),
                                )
                              ],
                            ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // margin: EdgeInsets.only(left: 16, right: 16),
                    child: Divider(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 16),
                      child: Container(
                        margin: EdgeInsets.only(left: 16, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Report app",
                              style: TextStyle(
                                color: Color.fromARGB(255, 59, 58, 58),
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Give your opinion",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 124, 124, 124),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                  color: Color.fromARGB(255, 124, 124, 124),
                                )
                              ],
                            ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // margin: EdgeInsets.only(left: 16, right: 16),
                    child: Divider(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
