import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GoogleScreen extends StatefulWidget {
  @override
  _GoogleScreenState createState() => _GoogleScreenState();
}

class _GoogleScreenState extends State<GoogleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   title: Text(
      //     "Google",
      //     style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
      //   ),
      // ),
      body: SafeArea(
        child: WebView(
          initialUrl:
              "https://www.google.co.in/search?q=google&sxsrf=ALeKk02O-v8ckEYkRsiEqGUBSau6M7eMow%3A1622612479083&source=hp&ei=_xm3YNGGAofAz7sPhNybwAM&iflsig=AINFCbYAAAAAYLcoD4fNGzhVctAoXi1J8cJ5I_PeQrlp&oq=&gs_lcp=Cgdnd3Mtd2l6EAEYADIHCCMQ6gIQJzIHCCMQ6gIQJzIHCCMQ6gIQJzIHCCMQ6gIQJzIHCCMQ6gIQJzIHCCMQ6gIQJzIHCCMQ6gIQJzIHCCMQ6gIQJzIHCCMQ6gIQJzIHCCMQ6gIQJ1AAWABgqCdoAXAAeACAAQCIAQCSAQCYAQCqAQdnd3Mtd2l6sAEK&sclient=gws-wiz&ved=0ahUKEwiRgq_DnvjwAhUH4HMBHQTuBjgQ4dUDCAw",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
