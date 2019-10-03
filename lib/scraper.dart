import 'dart:convert';
import 'package:http/http.dart';
import 'package:html/parser.dart';
import 'package:html/dom.dart';

Future initHackerNews() async {
  var cl = Client();
  Response resp = await cl.get('https://news.ycombinator.com');

  // print(resp.body);
  var doc = parse(resp.body);
  List<Element> links = doc.querySelectorAll('td.title > a.storylink');
  List<Map<String, dynamic>> linkMap = [];

  for(var link in links){
    linkMap.add({
      'title' : link.text,
      'href' : link.attributes['href'],
    });
  }

  return json.encode(linkMap);
}