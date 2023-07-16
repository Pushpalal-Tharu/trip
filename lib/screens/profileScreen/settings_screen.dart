import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../widgets/big_text.dart';

class ProfileSettingsScreen extends StatefulWidget {
  const ProfileSettingsScreen({super.key});

  @override
  State<ProfileSettingsScreen> createState() => _ProfileSettingsScreenState();
}

class _ProfileSettingsScreenState extends State<ProfileSettingsScreen> {
  bool isSelectedNightMode = true;

  void toggleSwitchNightMode(bool value) {
    setState(() {
      isSelectedNightMode = !isSelectedNightMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFFDBDFAA),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFDBDFAA),
        title: const Text("Settings"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 12),
              child: Container(
                child: BigText(
                  text: "Main Settings",
                  size: 22,
                ),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Get.toNamed("/ProfileAccountSecurity");
                    },
                    child: ListTile(
                      title: const Text(
                        "Accessibility",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF222034)),
                      ),
                      leading: Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color.fromARGB(255, 235, 236, 224),
                          ),
                          child: const Icon(
                            // <-- Icon
                            Icons.account_balance_wallet_outlined,
                            size: 24.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      ),
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      "Notifications",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF222034)),
                    ),
                    leading: Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(255, 235, 236, 224),
                        ),
                        child: const Icon(
                          // <-- Icon
                          Icons.notifications_outlined,
                          size: 24.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      "Privacy Policy",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF222034)),
                    ),
                    leading: Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(255, 235, 236, 224),
                        ),
                        child: const Icon(
                          // <-- Icon
                          Icons.policy_outlined,
                          size: 24.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 24),
              child: Container(
                child: BigText(
                  text: "Preferences",
                  size: 22,
                ),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                      title: const Text(
                        "Night Mode",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF222034)),
                      ),
                      leading: Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color.fromARGB(255, 235, 236, 224),
                          ),
                          child: const Icon(
                            // <-- Icon
                            Icons.dark_mode_outlined,
                            size: 24.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      trailing: Switch(
                        value: isSelectedNightMode,
                        onChanged: toggleSwitchNightMode,
                        activeColor: const Color(0xFF222034),
                        inactiveThumbColor: Colors.grey,
                        activeTrackColor: const Color(0xFFDBDFAA),
                        inactiveTrackColor: Colors.grey.withOpacity(0.25),
                      )),
                  ListTile(
                    title: const Text(
                      "Font & Colors",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF222034)),
                    ),
                    leading: Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(255, 235, 236, 224),
                        ),
                        child: const Icon(
                          // <-- Icon
                          Icons.color_lens_outlined,
                          size: 24.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      "Language",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF222034)),
                    ),
                    leading: Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(255, 235, 236, 224),
                        ),
                        child: const Icon(
                          // <-- Icon
                          Icons.language_outlined,
                          size: 24.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 24),
              child: Container(
                child: BigText(
                  text: "Other",
                  size: 22,
                ),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: const Text(
                      "About App",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF222034)),
                    ),
                    leading: Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(255, 235, 236, 224),
                        ),
                        child: const Icon(
                          // <-- Icon
                          Icons.info_outline,
                          size: 24.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
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
            )
          ],
        ),
      ),
    );
  }
}
