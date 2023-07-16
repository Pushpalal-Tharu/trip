import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:get/get.dart';
import 'explore_body.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          // width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFDBDFAA),
              Color(0xFFF7F6FF),
            ],
          )),
          child: Column(
            children: [
              //showing the header
              Container(
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 30,
                    bottom: 24,
                  ),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hey there!",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w600),
                          ),
                          Text("Good Morning:)")
                        ],
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const badges.Badge(
                              badgeStyle:
                                  badges.BadgeStyle(badgeColor: Colors.white),
                              showBadge: true,
                              badgeContent: Text("2"),
                              child: Icon(
                                Icons.notifications,
                                color: Color.fromARGB(249, 14, 8, 88),
                                size: 30,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            InkWell(
                              onTap: () {
                                Get.toNamed("/Profile");
                              },
                              child: CircleAvatar(
                                backgroundColor: const Color(0xFF222034),
                                child: ClipOval(
                                  child: Image.network(
                                      "https://images.pexels.com/photos/7656336/pexels-photo-7656336.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover, errorBuilder:
                                          (context, error, stackTrace) {
                                    return const Icon(
                                      Icons.person,
                                      color: Colors.white,
                                    );
                                  }),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              //showing the body
              const SingleChildScrollView(child: ExploreBody()),
            ],
          ),
        ),
      ),
    );
  }
}
