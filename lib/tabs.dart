import 'package:flutter/material.dart';
import 'package:flutter_demo_webview/screens/amazon.dart';
import 'package:flutter_demo_webview/screens/youtube.dart';
import 'package:flutter_demo_webview/screens/google.dart';
import 'package:flutter_demo_webview/screens/linkedin.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  TabController tabController;
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        height: 80,
        child: TabBar(
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.black,
            labelStyle: TextStyle(),
            controller: tabController,
            tabs: <Tab>[
              Tab(
                icon: Icon(FontAwesomeIcons.google),
                text: "Google",
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.amazon),
                text: "Amazon",
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.youtube),
                text: "Facebook",
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.linkedin),
                text: "LinkedIn",
              ),
            ]),
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          GoogleScreen(),
          AmazonScreen(),
          YoutubeScreen(),
          LinkedinScreen(),
        ],
      ),
    );
  }
}
