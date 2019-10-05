import 'dart:convert';

class ArticleModel {
  String source;
  String title;
  String url;
  String point;
  String age;
  String commend;
  String user;

  ArticleModel({
    this.source,
    this.title,
    this.url,
    this.point,
    this.age,
    this.commend,
    this.user,
  });

  factory ArticleModel.fromJson(String str) =>
      ArticleModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ArticleModel.fromMap(Map<String, dynamic> json) => ArticleModel(
        title: json["title"] == null ? null : json["title"],
        source: json["source"] == null ? null : json["source"],
        url: json["url"] == null ? null : json["url"],
        point: json["point"] == null ? null : json["point"],
        age: json["age"] == null ? null : json["age"],
        commend: json["commend"] == null ? null : json["commend"],
        user: json["user"] == null ? null : json["user"],
      );

  Map<String, dynamic> toMap() => {
        "title": title == null ? null : title,
        "source": source == null ? null : source,
        "url": url == null ? null : url,
        "point": point == null ? null : point,
        "age": age == null ? null : age,
        "commend": commend == null ? null : commend,
        "user": user == null ? null : user,
      };
}
