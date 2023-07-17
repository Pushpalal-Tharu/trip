import 'package:flutter/material.dart';

import '../../widgets/big_text.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  // String? language; //no radio button will be selected
  String language = "US"; //if you want to set default value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFDBDFAA),
        title: const Text("Language"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 12),
              child: Container(
                child: BigText(
                  text: "Suggested",
                  size: 22,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, right: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        language = "us";
                      });
                    },
                    splashColor: Colors.white70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "English (US)",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: language == "us"
                                  ? Color(0xFF222034)
                                  : Color.fromARGB(255, 124, 124, 124)),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Theme(
                            data: ThemeData(unselectedWidgetColor: Colors.grey),
                            child: Radio(
                              value: "us",
                              groupValue: language,
                              activeColor: Color.fromRGBO(219, 223, 170, 1),
                              onChanged: (value) {
                                setState(() {
                                  language = value.toString();
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        language = "uk";
                      });
                    },
                    splashColor: Colors.white70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "English (UK)",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: language == "uk"
                                  ? Color(0xFF222034)
                                  : Color.fromARGB(255, 124, 124, 124)),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Theme(
                            data: ThemeData(unselectedWidgetColor: Colors.grey),
                            child: Radio(
                              value: "uk",
                              groupValue: language,
                              activeColor: Color.fromRGBO(219, 223, 170, 1),
                              onChanged: (value) {
                                setState(() {
                                  language = value.toString();
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16),
              child: const Divider(
                thickness: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
              ),
              child: Container(
                child: BigText(
                  text: "Preferences",
                  size: 22,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, right: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        language = "nepal";
                      });
                    },
                    splashColor: Colors.white70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Nepali (Nepal)",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: language == "nepal"
                                ? Color(0xFF222034)
                                : Color.fromARGB(255, 124, 124, 124),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Theme(
                            data: ThemeData(unselectedWidgetColor: Colors.grey),
                            child: Radio(
                              value: "nepal",
                              groupValue: language,
                              activeColor: Color.fromRGBO(219, 223, 170, 1),
                              onChanged: (value) {
                                setState(() {
                                  language = value.toString();
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        language = "india";
                      });
                    },
                    splashColor: Colors.white70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Hindi (India)",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: language == "india"
                                ? Color(0xFF222034)
                                : Color.fromARGB(255, 124, 124, 124),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Theme(
                            data: ThemeData(unselectedWidgetColor: Colors.grey),
                            child: Radio(
                              value: "india",
                              groupValue: language,
                              activeColor: Color.fromRGBO(219, 223, 170, 1),
                              onChanged: (value) {
                                setState(() {
                                  language = value.toString();
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        language = "spain";
                      });
                    },
                    splashColor: Colors.white70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Spanish (Spain)",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: language == "spain"
                                ? Color(0xFF222034)
                                : Color.fromARGB(255, 124, 124, 124),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Theme(
                            data: ThemeData(unselectedWidgetColor: Colors.grey),
                            child: Radio(
                              value: "spain",
                              groupValue: language,
                              activeColor: Color.fromRGBO(219, 223, 170, 1),
                              onChanged: (value) {
                                setState(() {
                                  language = value.toString();
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        language = "france";
                      });
                    },
                    splashColor: Colors.white70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "French (France)",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: language == "france"
                                ? Color(0xFF222034)
                                : Color.fromARGB(255, 124, 124, 124),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Theme(
                            data: ThemeData(unselectedWidgetColor: Colors.grey),
                            child: Radio(
                              value: "france",
                              groupValue: language,
                              activeColor: Color.fromRGBO(219, 223, 170, 1),
                              onChanged: (value) {
                                setState(() {
                                  language = value.toString();
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        language = "arabian";
                      });
                    },
                    splashColor: Colors.white70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Arabic (Arabian)",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: language == "arabian"
                                ? Color(0xFF222034)
                                : Color.fromARGB(255, 124, 124, 124),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Theme(
                            data: ThemeData(unselectedWidgetColor: Colors.grey),
                            child: Radio(
                              value: "arabian",
                              groupValue: language,
                              activeColor: Color.fromRGBO(219, 223, 170, 1),
                              onChanged: (value) {
                                setState(() {
                                  language = value.toString();
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        language = "china";
                      });
                    },
                    splashColor: Colors.white70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Chinese (China)",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: language == "china"
                                ? Color(0xFF222034)
                                : Color.fromARGB(255, 124, 124, 124),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Theme(
                            data: ThemeData(unselectedWidgetColor: Colors.grey),
                            child: Radio(
                              value: "china",
                              groupValue: language,
                              activeColor: Color.fromRGBO(219, 223, 170, 1),
                              onChanged: (value) {
                                setState(() {
                                  language = value.toString();
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        language = "other";
                      });
                    },
                    splashColor: Colors.white70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Any others",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: language == "other"
                                ? Color(0xFF222034)
                                : Color.fromARGB(255, 124, 124, 124),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Theme(
                            data: ThemeData(unselectedWidgetColor: Colors.grey),
                            child: Radio(
                              value: "other",
                              groupValue: language,
                              activeColor: Color.fromRGBO(219, 223, 170, 1),
                              onChanged: (value) {
                                setState(() {
                                  language = value.toString();
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
