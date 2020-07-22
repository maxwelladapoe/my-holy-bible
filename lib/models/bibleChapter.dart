class BibleChapter{
  int bookId,chapterId;
  String chapterTitle;
  String chapterNumber;


  BibleChapter(this.bookId, this.chapterNumber);

BibleChapter.map( int bookId, int chapterId, String chapterNumber) {
    this.bookId = bookId;
    this.chapterNumber = chapterNumber;
  }

  int get bookid => bookId;
  String get chapternumber => chapterNumber;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    if (bookId != null) {
      map['b'] = bookId;
    }
    map['c'] = chapterNumber;

    return map;
  }

  BibleChapter.fromMap(Map<String, dynamic> map, String s) {
    this.bookId = map['b'];
    this.chapterNumber = map['c'];
  }



}