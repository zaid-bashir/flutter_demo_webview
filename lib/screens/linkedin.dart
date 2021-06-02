import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LinkedinScreen extends StatefulWidget {
  @override
  _LinkedinScreenState createState() => _LinkedinScreenState();
}

class _LinkedinScreenState extends State<LinkedinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   title: Text(
      //     "LinkedIn",
      //     style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
      //   ),
      // ),
      body: SafeArea(
        child: WebView(
          initialUrl: "https://www.linkedin.com/",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
