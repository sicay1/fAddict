import 'package:flutter/material.dart';
import 'package:test_hl/scraper.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Future<String> callHackNews() async {
    return await initHackerNews();
  }


  @override
  void initState() {
    super.initState();
    print(callHackNews());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
        child: SafeArea(
          child: WebView(
            initialUrl: 'https://humanparts.medium.com/the-joys-of-being-wrong-about-yourself-71bb6901e030',
            javascriptMode: JavascriptMode.disabled,

            userAgent: "Mozilla/5.0 (Linux; U; Android 8.1.0; en-US; Nexus 6P Build/OPM7.181205.001) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/57.0.2987.108 UCBrowser/12.11.1.1197 Mobile Safari/537.36",
          ),
        ),
      ),
    );
  }
}
