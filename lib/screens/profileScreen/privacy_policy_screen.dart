// import 'package:flutter/material.dart';
//  import 'package:webview_flutter/webview_flutter.dart';

// class PrivacyPolicyScreen extends StatefulWidget {
//   PrivacyPolicyScreen({super.key});

//   @override
//   State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
// }

// class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
//   late WebViewController controller;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: const Color(0xFFDBDFAA),
//           title: const Text("Privacy Policy"),
//           actions: [IconButton(onPressed: () {}, icon: icon)],
//         ),
//         body: WebView(
//             javascriptMode: JavascriptMode.unrestricted,
//             initialUrl: "https://www.amazon.com/"),
//         onWebViewCreated: (controller) {f
//           this.controller = controller;
//         });
//   }
// }
