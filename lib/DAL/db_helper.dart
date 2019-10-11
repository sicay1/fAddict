import 'dart:async';
import 'dart:convert';
import 'dart:io' as io;

import 'package:test_hl/models/article_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = new DatabaseHelper.internal();

  factory DatabaseHelper() => _instance;

  static Database _db;

  Future<Database> get db async {
    if (_db != null) return _db;
    _db = await initDb();
    return _db;
  }

  DatabaseHelper.internal();

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "main.db");
    var theDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return theDb;
  }

  void _onCreate(Database db, int version) async {
    // When creating the db, create the table
    await db.execute('''
        CREATE TABLE Article(
          aid TEXT PRIMARY KEY,
          source TEXT,
          title TEXT,
          url TEXT,
          point TEXT,
          age TEXT,
          commend TEXT,
          user TEXT,
          status TEXT
          )''');
  }

  Future clearTable() async {
    await _db.execute('''DELETE FROM Article''');
  }

  Future<int> saveArticle(ArticleModel article) async {
    var dbClient = await db;
    int res = await dbClient.insert("Article", article.toMap());
    return res;
  }

  Future<List<ArticleModel>> getArticle() async {
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery('SELECT * FROM Article');
    List<ArticleModel> res = new List();
    for (var il in list) {
      res.add(ArticleModel.fromMap(il));
    }

    // print(res.length);
    return res;
  }

  Future<int> deleteArticle(ArticleModel article) async {
    var dbClient = await db;

    int res = await dbClient
        .rawDelete('DELETE FROM Article WHERE id = ?', [article.aId]);
    return res;
  }

  Future<bool> update(ArticleModel article) async {
    var dbClient = await db;

    int res = await dbClient.update("Article", article.toMap(),
        where: "aid = ?", whereArgs: <String>[article.aId]);

    return res > 0 ? true : false;
  }
}
