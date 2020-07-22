import 'package:my_holy_bible/helpers/databaseInitializer.dart';

class DatabaseHelper {
  static Future<List<Map>> getTestamentBooks(String testament) async {
    var db = await DatabaseInitializer.initDatabase();

    var books;
    if (testament == 'old') {
      books = await db.query('key_english', limit: 39);
    } else if (testament == 'new') {
      books = await db.query('key_english', limit: 29, offset: 39);
    }

    return books.toList();
  }


  static Future getBookNameFromId(int bookId) async{
   var db = await DatabaseInitializer.initDatabase();

    var query;
    query = await db.query('key_english',
        where: 'b = $bookId', columns: ['n'], limit: 1);
    return query;
  }

  static Future<List<Map>> getChaptersList(int bookId) async {
    var db = await DatabaseInitializer.initDatabase();

    var chapters =
        await db.query('key_english', where: "b = $bookId", columns: ['nc'], limit: 1);
    return chapters;
  }

  static Future<List<Map>> getChapterVerses(int bookId,{int chapterNumber = 1, String version = 'niv'}) async {
    var db = await DatabaseInitializer.initDatabase();
    var verses;
    verses =
        await db.query('t_' + version, where: "b=$bookId and c=$chapterNumber");
       
    return verses.toList();
  }




    static Future<List<Map>> getAllVersesOfBook(int bookId,{ String version = 'niv'}) async {
    var db = await DatabaseInitializer.initDatabase();
    var verses;
    verses =
        await db.query('t_' + version, where: "b=$bookId");
       
    return verses.toList();
  }


  static Future<List<Map>> getVerseOfDay() async {
    var db = await DatabaseInitializer.initDatabase();

    var verse;
    verse = await db.query('et_dmv');
    return verse;
  }



}
