import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trip/screens/homeScreen/home_screen_fragments/explore.dart';
import 'package:trip/screens/homeScreen/home_screen_fragments/profile.dart';
import 'package:trip/screens/homeScreen/home_screen_fragments/template.dart';
import 'package:trip/screens/profileScreen/profile_account_security_screen.dart';
import 'package:trip/screens/profileScreen/profile_settings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Trip',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Explore(),
      getPages: [
        GetPage(name: "/", page: () => Explore()),
        GetPage(name: "/template", page: () => Template()),
        GetPage(name: "/Profile", page: () => Profile()),
        GetPage(name: "/ProfileSettings", page: () => ProfileSettingsScreen()),
        GetPage(
            name: "/ProfileAccountSecurity",
            page: () => ProfileAccountSecurityScreen()),
      ],
    );
  }
}
