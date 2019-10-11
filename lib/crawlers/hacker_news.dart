import 'package:http/http.dart';
import 'package:html/parser.dart';
import 'package:html/dom.dart';
import 'package:test_hl/models/article_model.dart';

Future<List<ArticleModel>> initHackerNews() async {
  var cl = Client();
  Response resp = await cl.get('https://news.ycombinator.com');


  var doc = parse(resp.body);
  List<Element> links1 = doc.querySelectorAll('td.title > a.storylink');
  List<Element> links2 = doc.querySelectorAll('td.subtext');
  List<ArticleModel> linkMap = [];
  for (int i = 0; i < links1.length; i++) {
    linkMap.add(new ArticleModel(
      source: 'Hacker News',
      title: links1[i].text ?? "",
      url: links1[i].attributes['href'] ?? "",
      point: links2[i].querySelector('span.score')?.text ?? "",
      age: links2[i].querySelector('span.age')?.text ?? "",
      commend: links2[i].querySelectorAll('a').last?.text ?? "",
      user: links2[i].querySelector('a.hnuser')?.text ?? "",
    ));
  }
  return linkMap;
}
