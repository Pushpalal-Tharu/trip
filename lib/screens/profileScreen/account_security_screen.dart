import 'package:flutter/material.dart';
import '../../../../widgets/big_text.dart';

class ProfileAccountSecurityScreen extends StatefulWidget {
  const ProfileAccountSecurityScreen({super.key});

  @override
  State<ProfileAccountSecurityScreen> createState() =>
      _UserProfileAccountSecurityPageState();
}

class _UserProfileAccountSecurityPageState
    extends State<ProfileAccountSecurityScreen> {
  bool isSelectedRememberMe = true;
  bool isSelectedFaceId = false;
  bool isSelectedBiometricId = false;
  bool isSelectedSsoActivation = true;
  bool isSelectedRightHandSuffle = true;
  bool isSelectedLeftHandSuffle = false;

  void toggleSwitchRemeberMe(bool value) {
    setState(() {
      isSelectedRememberMe = !isSelectedRememberMe;
    });
  }

  void toggleSwitchFaceId(bool value) {
    setState(() {
      isSelectedFaceId = !isSelectedFaceId;
    });
  }

  void toggleSwitchBiometricId(bool value) {
    setState(() {
      isSelectedBiometricId = !isSelectedBiometricId;
    });
  }

  void toggleSwitchSsoActivation(bool value) {
    setState(() {
      isSelectedSsoActivation = !isSelectedSsoActivation;
    });
  }

  void toggleSwitchRightHandSuffle(bool value) {
    setState(() {
      isSelectedRightHandSuffle = !isSelectedRightHandSuffle;
    });
  }

  void toggleSwitchLeftHandSuffle(bool value) {
    setState(() {
      isSelectedLeftHandSuffle = !isSelectedLeftHandSuffle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFFDBDFAA),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFDBDFAA),
        title: const Text("Account Security"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 12),
              child: Container(
                child: BigText(
                  text: "Account Security",
                  size: 22,
                ),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                      leading: const Text(
                        "Remeber Me",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF222034)),
                      ),
                      trailing: Switch(
                        value: isSelectedRememberMe,
                        onChanged: toggleSwitchRemeberMe,
                        activeColor: const Color(0xFF222034),
                        inactiveThumbColor: Colors.grey,
                        activeTrackColor: const Color(0xFFDBDFAA),
                        inactiveTrackColor: Colors.grey.withOpacity(0.25),
                      )),
                  ListTile(
                      leading: const Text(
                        "Face ID",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF222034)),
                      ),
                      trailing: Switch(
                        value: isSelectedFaceId,
                        onChanged: toggleSwitchFaceId,
                        activeColor: const Color(0xFF222034),
                        inactiveThumbColor: Colors.grey,
                        activeTrackColor: const Color(0xFFDBDFAA),
                        inactiveTrackColor: Colors.grey.withOpacity(0.25),
                      )),
                  ListTile(
                      leading: const Text(
                        "Biometric ID",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF222034)),
                      ),
                      trailing: Switch(
                        value: isSelectedBiometricId,
                        onChanged: toggleSwitchBiometricId,
                        activeColor: const Color(0xFF222034),
                        inactiveThumbColor: Colors.grey,
                        activeTrackColor: const Color(0xFFDBDFAA),
                        inactiveTrackColor: Colors.grey.withOpacity(0.25),
                      )),
                  ListTile(
                      leading: const Text(
                        "SSO Activation",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF222034)),
                      ),
                      trailing: Switch(
                        value: isSelectedSsoActivation,
                        onChanged: toggleSwitchSsoActivation,
                        activeColor: const Color(0xFF222034),
                        inactiveThumbColor: Colors.grey,
                        activeTrackColor: const Color(0xFFDBDFAA),
                        inactiveTrackColor: Colors.grey.withOpacity(0.25),
                      )),
                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 16),
                    child: const Divider(
                      thickness: 1,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 24),
              child: Container(
                child: BigText(
                  text: "Account Setting",
                  size: 22,
                ),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                      leading: const Text(
                        "Right Hand Suffle",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF222034)),
                      ),
                      trailing: Switch(
                        value: isSelectedRightHandSuffle,
                        onChanged: toggleSwitchRightHandSuffle,
                        activeColor: const Color(0xFF222034),
                        inactiveThumbColor: Colors.grey,
                        activeTrackColor: const Color(0xFFDBDFAA),
                        inactiveTrackColor: Colors.grey.withOpacity(0.25),
                      )),
                ],
              ),
            ),
            ListTile(
                leading: const Text(
                  "Left Handed Suffle",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF222034)),
                ),
                trailing: Switch(
                  value: isSelectedLeftHandSuffle,
                  onChanged: toggleSwitchLeftHandSuffle,
                  activeColor: const Color(0xFF222034),
                  inactiveThumbColor: Colors.grey,
                  activeTrackColor: const Color(0xFFDBDFAA),
                  inactiveTrackColor: Colors.grey.withOpacity(0.25),
                )),
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
