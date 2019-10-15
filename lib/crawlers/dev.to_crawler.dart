import 'package:flutter/material.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart';
import 'package:test_hl/models/article_model.dart';

Future<List<ArticleModel>> getDevToArticle() async {
  var resp = await Client().get('https://dev.to/t/flutter/latest');
  // var resp = await cl.get();
  var htmlAllArticle = parse(resp.body).querySelectorAll('div.single-article');

  List<ArticleModel> linkMap = [];
  for(var aa in htmlAllArticle){
    // linkMap.add(new ArticleModel(
    //   // aId: 
    // );
  }

  return linkMap;
}