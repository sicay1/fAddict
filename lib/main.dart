import 'package:flutter/material.dart';
import 'crawlers/hacker_news.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'models/article.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class SecondRoute extends StatefulWidget {
  final String url;

  const SecondRoute(this.url);

  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  num _stackToView = 1;
  final _key = UniqueKey();
  void _handleLoad(String value) {
    setState(() {
      _stackToView = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Route")),
      body: IndexedStack(
        index: _stackToView,
        children: <Widget>[
          SafeArea(
            child: WebView(
              key: _key,
              initialUrl: widget.url,
              onPageFinished: _handleLoad,
              javascriptMode: JavascriptMode.disabled,
              userAgent:
                  "Mozilla/5.0 (Linux; U; Android 8.1.0; en-US; Nexus 6P Build/OPM7.181205.001) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/57.0.2987.108 UCBrowser/12.11.1.1197 Mobile Safari/537.36",
            ),
          ),
          Container(
            child: Center(child: CircularProgressIndicator()),
          ),
        ],
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
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('hacker news',
                              style: TextStyle(color: Colors.grey)),
                          Text(allarticle.title,
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold)),
                          Row(
                            children: <Widget>[
                              Icon(Icons.person,
                                  color: Colors.grey.withOpacity(0.5)),
                              Text(allarticle.user),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.score,
                                  color: Colors.grey.withOpacity(0.5)),
                              Text(allarticle.point),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.comment,
                                  color: Colors.grey.withOpacity(0.5)),
                              Text(allarticle.commend),
                            ],
                          ),
                          Row(
                            //button actions
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.open_in_new),
                                tooltip: "click to read this",
                                iconSize: 30,
                                color: Colors.blue,
                                highlightColor: Colors.redAccent,
                                onPressed: () {
                                  print('tapped url ${allarticle.url}');
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SecondRoute(allarticle.url)),
                                  );
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.save_alt),
                                tooltip: "Save to local for offline read",
                                iconSize: 30,
                                color: Colors.blue,
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: Icon(Icons.share),
                                tooltip: "Share friends",
                                iconSize: 30,
                                color: Colors.blue,
                                onPressed: () {},
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
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
