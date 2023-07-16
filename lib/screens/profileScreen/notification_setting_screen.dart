import 'package:flutter/material.dart';
import '../../../../widgets/big_text.dart';

class NotificationSettingScreen extends StatefulWidget {
  const NotificationSettingScreen({super.key});

  @override
  State<NotificationSettingScreen> createState() =>
      _UserProfileAccountSecurityPageState();
}

class _UserProfileAccountSecurityPageState
    extends State<NotificationSettingScreen> {
  bool isSelectedGeneralNotification = true;
  bool isSelectedSound = false;
  bool isSelectedVibrate = false;
  bool isSelectedSpecialOffers = true;
  bool isSelectedAppUpdates = true;
  bool isSelectedNewServicesAvailable = false;
  bool isSelectedNewTipsAvailable = false;

  void toggleSwitchGeneralNotification(bool value) {
    setState(() {
      isSelectedGeneralNotification = !isSelectedGeneralNotification;
    });
  }

  void toggleSwitchSound(bool value) {
    setState(() {
      isSelectedSound = !isSelectedSound;
    });
  }

  void toggleSwitchVibrate(bool value) {
    setState(() {
      isSelectedVibrate = !isSelectedVibrate;
    });
  }

  void toggleSwitchSpecialOffers(bool value) {
    setState(() {
      isSelectedSpecialOffers = !isSelectedSpecialOffers;
    });
  }

  void toggleSwitchAppUpdates(bool value) {
    setState(() {
      isSelectedAppUpdates = !isSelectedAppUpdates;
    });
  }

  void toggleSwitchNewServicesAvailable(bool value) {
    setState(() {
      isSelectedNewServicesAvailable = !isSelectedNewServicesAvailable;
    });
  }

  void toggleSwitchNewTipsAvailable(bool value) {
    setState(() {
      isSelectedNewTipsAvailable = !isSelectedNewTipsAvailable;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFFDBDFAA),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFDBDFAA),
        title: const Text("Notification Setting"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
                leading: const Text(
                  "General Notification",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF222034)),
                ),
                trailing: Switch(
                  value: isSelectedGeneralNotification,
                  onChanged: toggleSwitchGeneralNotification,
                  activeColor: const Color(0xFF222034),
                  inactiveThumbColor: Colors.grey,
                  activeTrackColor: const Color(0xFFDBDFAA),
                  inactiveTrackColor: Colors.grey.withOpacity(0.25),
                )),
            ListTile(
                leading: const Text(
                  "Sound",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF222034)),
                ),
                trailing: Switch(
                  value: isSelectedSound,
                  onChanged: toggleSwitchSound,
                  activeColor: const Color(0xFF222034),
                  inactiveThumbColor: Colors.grey,
                  activeTrackColor: const Color(0xFFDBDFAA),
                  inactiveTrackColor: Colors.grey.withOpacity(0.25),
                )),
            ListTile(
                leading: const Text(
                  "Vibrate",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF222034)),
                ),
                trailing: Switch(
                  value: isSelectedVibrate,
                  onChanged: toggleSwitchVibrate,
                  activeColor: const Color(0xFF222034),
                  inactiveThumbColor: Colors.grey,
                  activeTrackColor: const Color(0xFFDBDFAA),
                  inactiveTrackColor: Colors.grey.withOpacity(0.25),
                )),
            ListTile(
                leading: const Text(
                  "Special Offers",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF222034)),
                ),
                trailing: Switch(
                  value: isSelectedSpecialOffers,
                  onChanged: toggleSwitchSpecialOffers,
                  activeColor: const Color(0xFF222034),
                  inactiveThumbColor: Colors.grey,
                  activeTrackColor: const Color(0xFFDBDFAA),
                  inactiveTrackColor: Colors.grey.withOpacity(0.25),
                )),
            ListTile(
                leading: const Text(
                  "App Updates",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF222034)),
                ),
                trailing: Switch(
                  value: isSelectedAppUpdates,
                  onChanged: toggleSwitchAppUpdates,
                  activeColor: const Color(0xFF222034),
                  inactiveThumbColor: Colors.grey,
                  activeTrackColor: const Color(0xFFDBDFAA),
                  inactiveTrackColor: Colors.grey.withOpacity(0.25),
                )),
            ListTile(
                leading: const Text(
                  "New Services Available",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF222034)),
                ),
                trailing: Switch(
                  value: isSelectedNewServicesAvailable,
                  onChanged: toggleSwitchNewServicesAvailable,
                  activeColor: const Color(0xFF222034),
                  inactiveThumbColor: Colors.grey,
                  activeTrackColor: const Color(0xFFDBDFAA),
                  inactiveTrackColor: Colors.grey.withOpacity(0.25),
                )),
            ListTile(
                leading: const Text(
                  "New Tips Available",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF222034)),
                ),
                trailing: Switch(
                  value: isSelectedNewTipsAvailable,
                  onChanged: toggleSwitchNewTipsAvailable,
                  activeColor: const Color(0xFF222034),
                  inactiveThumbColor: Colors.grey,
                  activeTrackColor: const Color(0xFFDBDFAA),
                  inactiveTrackColor: Colors.grey.withOpacity(0.25),
                )),
          ],
        ),
      ),
    );
  }
}
