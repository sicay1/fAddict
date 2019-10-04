import 'package:flutter/material.dart';
import 'package:test_hl/scraper.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'models/article.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class SecondRoute extends StatelessWidget {
  final String url;

  const SecondRoute(this.url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Route")),
      body: Container(
        child: SafeArea(
          child: WebView(
            initialUrl: url,
            javascriptMode: JavascriptMode.disabled,
            userAgent:
                "Mozilla/5.0 (Linux; U; Android 8.1.0; en-US; Nexus 6P Build/OPM7.181205.001) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/57.0.2987.108 UCBrowser/12.11.1.1197 Mobile Safari/537.36",
          ),
        ),
      ),
    );
  }
}

class _MyAppState extends State<MyApp> {
  List<ArticleModel> allArticle = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: new AppBar(),
        body: FutureBuilder(
          builder: (context, projectSnap) {
            if (projectSnap.connectionState == ConnectionState.none &&
                    projectSnap.hasData == null ||
                projectSnap.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            return ListView.builder(
              itemCount: projectSnap.data.length,
              itemBuilder: (context, index) {
                ArticleModel allarticle = projectSnap.data[index];
                return ListTile(
                  leading: Container(
                    width: 50,
                    child: Text(allarticle.user),
                  ),
                  title: new Text(
                    allarticle.title,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  subtitle: new Text(
                    allarticle.point,
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  onTap: () {
                    print('tapped url ${allarticle.url}');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SecondRoute(allarticle.url)),
                    );
                  },
                  contentPadding: EdgeInsets.only(bottom: 8, left: 5, right: 5),
                );
              },
            );
          },
          future: initHackerNews(),
        ),
      ),
    );
  }
}
