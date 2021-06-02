import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class YoutubeScreen extends StatefulWidget {
  @override
  _YoutubeScreenState createState() => _YoutubeScreenState();
}

class _YoutubeScreenState extends State<YoutubeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   title: Text(
      //     "Youtube",
      //     style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
      //   ),
      // ),
      body: SafeArea(
        child: WebView(
          initialUrl: "https://www.youtube.com/",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
