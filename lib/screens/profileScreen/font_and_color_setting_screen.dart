import 'package:flutter/material.dart';
import '../../../../widgets/big_text.dart';

class FontAndColorSettingScreen extends StatefulWidget {
  const FontAndColorSettingScreen({super.key});

  @override
  State<FontAndColorSettingScreen> createState() =>
      _FontAndColorSettingScreenState();
}

class _FontAndColorSettingScreenState extends State<FontAndColorSettingScreen> {
  bool isSelectedAppFontStyle = true;
  bool isSelectedMobileFontStyle = false;
  bool isSelectedDarkMode = false;
  bool isSelectedNightShift = true;
  bool isSelectedTrueTone = true;

  void toggleSwitchAppFontStyle(bool value) {
    setState(() {
      isSelectedAppFontStyle = !isSelectedAppFontStyle;
    });
  }

  void toggleSwitchMobileFontStyle(bool value) {
    setState(() {
      isSelectedMobileFontStyle = !isSelectedMobileFontStyle;
    });
  }

  void toggleSwitchDarkMode(bool value) {
    setState(() {
      isSelectedDarkMode = !isSelectedDarkMode;
    });
  }

  void toggleSwitchNightShift(bool value) {
    setState(() {
      isSelectedNightShift = !isSelectedNightShift;
    });
  }

  void toggleSwitchTrueTone(bool value) {
    setState(() {
      isSelectedTrueTone = !isSelectedTrueTone;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFFDBDFAA),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFDBDFAA),
        title: const Text("Font & Color"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 12),
              child: Container(
                child: BigText(
                  text: "Fonts",
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
                        "App Font Style",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF222034)),
                      ),
                      trailing: Switch(
                        value: isSelectedAppFontStyle,
                        onChanged: toggleSwitchAppFontStyle,
                        activeColor: const Color(0xFF222034),
                        inactiveThumbColor: Colors.grey,
                        activeTrackColor: const Color(0xFFDBDFAA),
                        inactiveTrackColor: Colors.grey.withOpacity(0.25),
                      )),
                  ListTile(
                      leading: const Text(
                        "Mobile Font Style",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF222034)),
                      ),
                      trailing: Switch(
                        value: isSelectedMobileFontStyle,
                        onChanged: toggleSwitchMobileFontStyle,
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
                  text: "Colour",
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
                        "Dark Mode",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF222034)),
                      ),
                      trailing: Switch(
                        value: isSelectedDarkMode,
                        onChanged: toggleSwitchDarkMode,
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
                  "Night Shift",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF222034)),
                ),
                trailing: Switch(
                  value: isSelectedNightShift,
                  onChanged: toggleSwitchNightShift,
                  activeColor: const Color(0xFF222034),
                  inactiveThumbColor: Colors.grey,
                  activeTrackColor: const Color(0xFFDBDFAA),
                  inactiveTrackColor: Colors.grey.withOpacity(0.25),
                )),
            ListTile(
                leading: const Text(
                  "True Tone",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF222034)),
                ),
                trailing: Switch(
                  value: isSelectedTrueTone,
                  onChanged: toggleSwitchTrueTone,
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
