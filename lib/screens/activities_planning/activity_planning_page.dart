import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dimension/src/dimension.dart' as dimension;
import 'package:morphable_shape/morphable_shape.dart';

import 'activity_planning_header.dart';

class ActivityPlanningPage extends StatefulWidget {
  const ActivityPlanningPage({super.key});

  @override
  State<ActivityPlanningPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ActivityPlanningPage> {
  var appBarHeight = AppBar().preferredSize.height;
  bool _isShowMainBody = true;
  bool _isShowAllActivities = false;
  bool _isShowNotes = false;
  bool _isShowPrivateTakes = false;
  bool isShowDot = false;

  bool? check1 = true, check2 = true, check3 = true;
  //true for checked checkbox, flase for unchecked one

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFDBDFAA),
        leading: IconButton(
          color: Colors.black,
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
        title: const Text(
          "Activity Planning",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: PopupMenuButton<int>(
              icon: const Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
              offset: Offset(0.0, appBarHeight - 16),
              shape: const BubbleShapeBorder(
                  borderRadius: dimension.Length(22, unit: LengthUnit.percent),
                  side: ShapeSide.top,
                  arrowCenterPosition:
                      dimension.Length(86, unit: LengthUnit.percent),
                  arrowHeadPosition:
                      dimension.Length(86, unit: LengthUnit.percent),
                  arrowWidth: dimension.Length(8, unit: LengthUnit.percent),
                  arrowHeight: dimension.Length(6, unit: LengthUnit.percent)),
              itemBuilder: (context) => [
                const PopupMenuItem<int>(
                    value: 0,
                    child: Padding(
                        padding: EdgeInsets.only(top: 12),
                        child: Row(
                          children: [
                            Icon(
                              Icons.group,
                              color: Color.fromARGB(255, 29, 29, 29),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text("Partakers")
                          ],
                        ))),
                const PopupMenuItem<int>(
                    value: 1,
                    child: Row(
                      children: [
                        Icon(
                          Icons.share,
                          color: Color.fromARGB(255, 29, 29, 29),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text("Share")
                      ],
                    )),
              ],
              onSelected: (item) => SelectedItem(context, item),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8, left: 12, right: 12),
        child: Column(
          children: [
            // main header start
            MainHeaderSection(),
            // main header emd
            SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: _isShowMainBody
                  ? Visibility(
                      maintainState: true,
                      visible: _isShowMainBody,
                      maintainAnimation: true,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                _isShowMainBody = false;
                                _isShowAllActivities = true;
                              });
                            },
                            child: Container(
                              height: 50,
                              child: Row(
                                children: [
                                  Text(
                                    'All Activities',
                                    style: TextStyle(
                                      color: Color(0xFF484473),
                                      fontSize: 20,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xFF484473),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _isShowMainBody = false;
                                _isShowNotes = true;
                              });
                            },
                            child: Container(
                              height: 50,
                              child: Row(
                                children: [
                                  Text(
                                    'Notes',
                                    style: TextStyle(
                                      color: Color(0xFF484473),
                                      fontSize: 20,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xFF484473),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _isShowMainBody = false;
                                _isShowPrivateTakes = true;
                              });
                            },
                            child: Container(
                              height: 50,
                              child: Row(
                                children: [
                                  Text(
                                    'Private Takes',
                                    style: TextStyle(
                                      color: Color(0xFF484473),
                                      fontSize: 20,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xFF484473),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ))
                  : _bodyFragmentsCheck(),
            )),
          ],
        ),
      ),
    );
  }

  Widget _allActivites() {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _isShowMainBody = true;
                    _isShowAllActivities = false;
                  });
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xFF484473),
                    ),
                    Text(
                      'All activities',
                      style: TextStyle(
                        color: Color(0xFF484473),
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Icon(
                    Icons.send_outlined,
                    color: Color(0xFF484473),
                    size: 24,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.pending_outlined,
                      color: Color(0xFF484473),
                      size: 24,
                    ),
                  ),
                ],
              )
            ],
          ),
          Text(
            'First day plan.',
            style: TextStyle(
              color: Color(0xFFDBDFAA),
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
          Divider(),
          TextField(
            keyboardType: TextInputType.text,
            maxLines: 5,
            minLines: 1,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Things to do...",
              hintStyle: TextStyle(
                color: Color(0xFF5B5959),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              isDense: true,
            ),
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.black,
            ),
          ),
          Text(
            '#Public',
            style: TextStyle(
              color: Color(0xFFDBDFAA),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        padding: const EdgeInsets.all(3),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/beautiful_check_box.png"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'hi.keshavkandel',
                        style: TextStyle(
                          color: Color(0xFF3B3762),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 22,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.50, color: Color(0xFF222034)),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.more_horiz,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                'Have a casual chat with someone you find interesting and attractive in a respectful and appropriate manner.',
                style: TextStyle(
                  color: Color(0xBF1D1D1D),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          Divider(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        padding: const EdgeInsets.all(3),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/beautiful_check_box.png"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'hi.keshavkandel',
                        style: TextStyle(
                          color: Color(0xFF3B3762),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 22,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.50, color: Color(0xFF222034)),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.more_horiz,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                'Have a casual chat with someone you find interesting and attractive in a respectful and appropriate manner.',
                style: TextStyle(
                  color: Color(0xBF1D1D1D),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          Divider(),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '#Public',
                style: TextStyle(
                  color: Color(0xFF484473),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Container(
                height: 22,
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Color(0xFF222034)),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.more_horiz,
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 24.0,
                child: Checkbox(
                    activeColor: Color(0xFF484473),
                    //only check box
                    value: check1, //unchecked
                    onChanged: (bool? value) {
                      //value returned when checkbox is clicked
                      setState(() {
                        check1 = value;
                      });
                    }),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Do research on UX project.',
                style: TextStyle(
                  color: Color(0xBF1D1D1D),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 24.0,
                child: Checkbox(
                    activeColor: Color(0xFF484473),
                    //only check box
                    value: check2, //unchecked
                    onChanged: (bool? value) {
                      //value returned when checkbox is clicked
                      setState(() {
                        check2 = value;
                      });
                    }),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Go to the gym in the morning.',
                style: TextStyle(
                  color: Color(0xBF1D1D1D),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 24.0,
                child: Checkbox(
                    activeColor: Color(0xFF484473),
                    //only check box
                    value: check3, //unchecked
                    onChanged: (bool? value) {
                      //value returned when checkbox is clicked
                      setState(() {
                        check3 = value;
                      });
                    }),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Talk to somebody.',
                style: TextStyle(
                  color: Color(0xBF1D1D1D),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _notes() {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _isShowMainBody = true;
                    _isShowNotes = false;
                  });
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xFF484473),
                    ),
                    Text(
                      'Notes',
                      style: TextStyle(
                        color: Color(0xFF484473),
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Icon(
                    Icons.send_outlined,
                    color: Color(0xFF484473),
                    size: 24,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.pending_outlined,
                      color: Color(0xFF484473),
                      size: 24,
                    ),
                  ),
                ],
              )
            ],
          ),
          Text(
            'Write your note.',
            style: TextStyle(
              color: Color(0xFFDBDFAA),
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
          Divider(),
          TextField(
            keyboardType: TextInputType.text,
            maxLines: 5,
            minLines: 1,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Things to do...",
              hintStyle: TextStyle(
                color: Color(0xFF5B5959),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              isDense: true,
            ),
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.black,
            ),
          ),
          Text(
            '#Public',
            style: TextStyle(
              color: Color(0xFFDBDFAA),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        padding: const EdgeInsets.all(3),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/beautiful_check_box.png"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'hi.keshavkandel',
                        style: TextStyle(
                          color: Color(0xFF3B3762),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 22,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.50, color: Color(0xFF222034)),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.more_horiz,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                'Have a casual chat with someone you find interesting and attractive in a respectful and appropriate manner.',
                style: TextStyle(
                  color: Color(0xBF1D1D1D),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          Divider(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        padding: const EdgeInsets.all(3),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/beautiful_check_box.png"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'hi.keshavkandel',
                        style: TextStyle(
                          color: Color(0xFF3B3762),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 22,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.50, color: Color(0xFF222034)),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.more_horiz,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                'Have a casual chat with someone you find interesting and attractive in a respectful and appropriate manner.',
                style: TextStyle(
                  color: Color(0xBF1D1D1D),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          Divider(),
        ],
      ),
    );
  }

  Widget _privateTakes() {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _isShowMainBody = true;
                    _isShowPrivateTakes = false;
                  });
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xFF484473),
                    ),
                    Text(
                      'Private takes',
                      style: TextStyle(
                        color: Color(0xFF484473),
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Icon(
                    Icons.send_outlined,
                    color: Color(0xFF484473),
                    size: 24,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.pending_outlined,
                      color: Color(0xFF484473),
                      size: 24,
                    ),
                  ),
                ],
              )
            ],
          ),
          Text(
            'Write your takes.',
            style: TextStyle(
              color: Color(0xFFDBDFAA),
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
          Divider(),
          TextField(
            keyboardType: TextInputType.text,
            maxLines: 5,
            minLines: 1,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "My things to do...",
              hintStyle: TextStyle(
                color: Color(0xFF5B5959),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              isDense: true,
            ),
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.black,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '#Public',
                style: TextStyle(
                  color: Color(0xFF484473),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isShowDot = !isShowDot;
                  });
                },
                child: Container(
                  height: 22,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: isShowDot ? Color(0xFF222034) : Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFF222034)),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      isShowDot ? Icons.more_vert : Icons.more_horiz,
                      size: 18,
                      color: isShowDot ? Colors.white : Color(0xFF222034),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 24.0,
                child: Checkbox(
                    activeColor: Color(0xFF484473),
                    //only check box
                    value: check1, //unchecked
                    onChanged: (bool? value) {
                      //value returned when checkbox is clicked
                      setState(() {
                        check1 = value;
                      });
                    }),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Do research on UX project.',
                style: TextStyle(
                  color: Color(0xBF1D1D1D),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 24.0,
                child: Checkbox(
                    activeColor: Color(0xFF484473),
                    //only check box
                    value: check2, //unchecked
                    onChanged: (bool? value) {
                      //value returned when checkbox is clicked
                      setState(() {
                        check2 = value;
                      });
                    }),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Go to the gym in the morning.',
                style: TextStyle(
                  color: Color(0xBF1D1D1D),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 24.0,
                child: Checkbox(
                    activeColor: Color(0xFF484473),

                    //only check box
                    value: check3, //unchecked
                    onChanged: (bool? value) {
                      //value returned when checkbox is clicked
                      setState(() {
                        check3 = value;
                      });
                    }),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Talk to somebody.',
                style: TextStyle(
                  color: Color(0xBF1D1D1D),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  _bodyFragmentsCheck() {
    if (_isShowAllActivities) {
      return _allActivites();
    } else if (_isShowNotes) {
      return _notes();
    } else {
      return _privateTakes();
    }
  }
}

void SelectedItem(BuildContext context, item) {
  switch (item) {
    case 0:
      print("Privacy Clicked222");

      // Navigator.of(context)
      //     .push(MaterialPageRoute(builder: (context) => SettingPage()));
      break;
    case 1:
      print("Privacy Clicked");
      break;
    case 2:
      print("User Logged out");
      // Navigator.of(context).pushAndRemoveUntil(
      //     MaterialPageRoute(builder: (context) => LoginPage()),
      //     (route) => false);
      break;
  }
}
