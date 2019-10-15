// import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart';
import 'package:test_hl/models/article_model.dart';
import 'package:test_hl/models/medium_model.dart';

Future<List<ArticleModel>> getMediumPost() async {
  Response resp = await Client().get('https://medium.com/flutter-community');
  var doc = parse(resp.body).querySelector('body');

  RegExp regExp = new RegExp(r'{"references"(.*.?)\]\}',
      caseSensitive: false, multiLine: false);
  var jsonTxt = regExp.stringMatch(doc.outerHtml);
  Mediummodel mData = Mediummodel.fromJson(jsonTxt);

  List<ArticleModel> linkMap = [];
  var allMediumPosts = mData.references.post;
  for (PortoCamel post in allMediumPosts.values) {
    linkMap.add(new ArticleModel(
      aId: 'medium_${post.id}',
      source: 'Medium',
      title: post.title ?? "",
      url: 'https://medium.com/p/${post.id ?? '404'}',
      point: post.virtuals.totalClapCount.toString(),
      age: "",
      commend: "",
      user: mData.references.user.values
              .singleWhere((x) => x.userId == post.creatorId)
              .username ??
          "",
      status: 0,
    ));
  }
  return linkMap;
}
