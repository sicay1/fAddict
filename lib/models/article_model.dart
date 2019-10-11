import 'dart:convert';

class ArticleModel {
  String aId;
  String source;
  String title;
  String url;
  String point;
  String age;
  String commend;
  String user;

  ///0: crawled
  ///3: read later
  int status;

  ArticleModel({
    this.aId,
    this.source,
    this.title,
    this.url,
    this.point,
    this.age,
    this.commend,
    this.user,
    this.status,
  });


  ArticleModel.map(dynamic obj) {
    this.aId = obj["aid"];
    this.source = obj["source"];
    this.title = obj["title"];
    this.url = obj["url"];
    this.point = obj["point"];
    this.age = obj["age"];
    this.commend = obj["commend"];
    this.user = obj["user"];
    this.status = int.parse(obj["status"]);
  }


  factory ArticleModel.fromJson(String str) =>
      ArticleModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ArticleModel.fromMap(Map<String, dynamic> json) => ArticleModel(
        aId: json["aid"] == null ? null : json["aid"],
        source: json["source"] == null ? null : json["source"],
        title: json["title"] == null ? null : json["title"],
        url: json["url"] == null ? null : json["url"],
        point: json["point"] == null ? null : json["point"],
        age: json["age"] == null ? null : json["age"],
        commend: json["commend"] == null ? null : json["commend"],
        user: json["user"] == null ? null : json["user"],
        status: int.parse(json["status"]),
      );

  Map<String, dynamic> toMap() => {
        "aid": aId == null ? null : aId,
        "source": source == null ? null : source,
        "title": title == null ? null : title,
        "url": url == null ? null : url,
        "point": point == null ? null : point,
        "age": age == null ? null : age,
        "commend": commend == null ? null : commend,
        "user": user == null ? null : user,
        "status": status,
      };
}
