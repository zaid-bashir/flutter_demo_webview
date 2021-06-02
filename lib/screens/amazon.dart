import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AmazonScreen extends StatefulWidget {
  @override
  _AmazonScreenState createState() => _AmazonScreenState();
}

class _AmazonScreenState extends State<AmazonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   title: Text(
      //     "Amazon",
      //     style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
      //   ),
      // ),
      body: SafeArea(
        child: WebView(
          initialUrl: "https://www.amazon.com/",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
