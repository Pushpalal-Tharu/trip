import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDBDFAA),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 32),
            padding: const EdgeInsets.only(top: 32),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: ExactAssetImage("assets/images/profile_background.png"),
              fit: BoxFit.cover,
            )),
            child: Column(
              children: [
                /// -- IMAGE
                Stack(
                  children: [
                    SizedBox(
                      width: 120,
                      height: 120,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: const Image(
                              image: AssetImage("assets/images/profile.jpg"))),
                    ),
                    Positioned(
                      bottom: 20,
                      right: 5,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5), // 0.1 to 0.9
                          color: const Color(0xFF222034),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: const Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Text("Keshav Kandel",
                    style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: 5),

                //Copy to clipboard button. (Start)
                Container(
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: const Color(0xFF222034),
                  ),
                  width: MediaQuery.of(context).size.width * .35,
                  margin: const EdgeInsets.only(
                      bottom: 15, top: 10, left: 15, right: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0xFFDBDFAA),
                          ),
                          child: const Icon(
                            // <-- Icon
                            Icons.content_paste,
                            size: 16.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        child: const Center(
                          child: Text(
                            "21585424",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                //Copy to clipboard button. (End)

                const SizedBox(height: 20),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              // margin: EdgeInsets.only(left: 16, right: 16),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 22,
                  right: 22,
                  top: 20,
                ),
                child: Column(
                  children: [
                    InkWell(
                      splashColor: Colors.blue,
                      onTap: () async {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8, bottom: 8),
                            child: Text(
                              "Edit Profile",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF222034)),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      splashColor: Colors.blue,
                      onTap: () async {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8, bottom: 8),
                            child: Text(
                              "Trip History",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF222034)),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      splashColor: Colors.blue,
                      onTap: () async {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8, bottom: 8),
                            child: Text(
                              "Notifications",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF222034)),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      splashColor: Colors.blue,
                      onTap: () async {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8, bottom: 8),
                            child: Text(
                              "Access Permissions",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF222034)),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Divider(),
                    InkWell(
                      splashColor: Colors.blue,
                      onTap: () async {
                        Get.toNamed("/ProfileSettings");
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8, bottom: 8),
                            child: Text(
                              "App Settings",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF222034)),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      splashColor: Colors.blue,
                      onTap: () async {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8, bottom: 8),
                            child: Text(
                              "Help & Supports",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF222034)),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Divider(),
                    InkWell(
                      splashColor: Colors.blue,
                      onTap: () async {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8, bottom: 8),
                            child: Text(
                              "About App",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF222034)),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      splashColor: Colors.blue,
                      onTap: () async {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8, bottom: 8),
                            child: Text(
                              "Sign Out",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF222034)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
