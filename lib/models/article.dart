import 'dart:convert';

class ArticleModel {
    String title;
    String url;
    String point;
    String age;
    String commend;
    String user;

    ArticleModel({
        this.title,
        this.url,
        this.point,
        this.age,
        this.commend,
        this.user,
    });

    factory ArticleModel.fromJson(String str) => ArticleModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ArticleModel.fromMap(Map<String, dynamic> json) => ArticleModel(
        title: json["title"] == null ? null : json["title"],
        url: json["url"] == null ? null : json["url"],
        point: json["point"] == null ? null : json["point"],
        age: json["age"] == null ? null : json["age"],
        commend: json["commend"] == null ? null : json["commend"],
        user: json["user"] == null ? null : json["user"],
    );

    Map<String, dynamic> toMap() => {
        "title": title == null ? null : title,
        "url": url == null ? null : url,
        "point": point == null ? null : point,
        "age": age == null ? null : age,
        "commend": commend == null ? null : commend,
        "user": user == null ? null : user,
    };
}
