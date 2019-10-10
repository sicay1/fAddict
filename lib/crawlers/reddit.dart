// import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart';
import 'package:test_hl/models/article.dart';
import 'package:test_hl/models/reddit_model.dart';
// import 'package:test_hl/models/medium_model.dart';

Future<List<ArticleModel>> getRedditPost() async {
  var cl = Client();
  Response resp = await cl.get('https://www.reddit.com/r/FlutterDev/');

  var doc = parse(resp.body).querySelector('body');

  RegExp regExp = new RegExp(r'{"domain":(.*?)"numDuplicates":.*?}',
      caseSensitive: false, multiLine: false);
  var matches = regExp.allMatches(doc.outerHtml).toList();

  List<ArticleModel> linkMap = [];

  for(var match in matches){
   var rData = Redditmodel.fromJson(match.group(0));
// var text = "sdfsd";

linkMap.add(new ArticleModel(
      source: 'Reddit',
      title: rData.title ?? "",
      url: rData.permalink ?? '404',
      point: rData.score.toString(),
      age: DateTime.fromMillisecondsSinceEpoch(rData.created * 1000).toString(),
      commend: rData.numComments.toString(),
      // user: mData.references.user.values
      //     .singleWhere((x) => x.userId == post.creatorId)
      //     .username ?? "",
      user: rData.author,
    ));
  }

  
  //var allRedditPosts = mData.posts.models;
  // for (PostsModel post in allRedditPosts) {
  //   linkMap.add(new ArticleModel(
  //     source: post.domain.trim(),
  //     title: post.title ?? "",
  //     url:
  //         'https://www.reddit.com/r/FlutterDev/comments/${post.postId ?? '404'}',
  //     point: post.score.toString(),
  //     age: DateTime.fromMillisecondsSinceEpoch(post.created * 1000).toString(),
  //     commend: post.numComments.toString(),
  //     // user: mData.references.user.values
  //     //     .singleWhere((x) => x.userId == post.creatorId)
  //     //     .username ?? "",
  //     user: "",
  //   ));
  // }
  return linkMap;
}
