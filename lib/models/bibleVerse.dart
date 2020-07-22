
//the verse id represents the id tagged to the verse in the database
//the verse number is simple the verse number assigned to it in the bible
class BibleVerse{
  String bibleVersion, bookName, verseText;
  int verseId,verseNumber,chapterNumber, bookId;
  int isHighlighted;

  BibleVerse(this.bibleVersion,this.bookId, this.chapterNumber, this.verseId, this.verseNumber);



  BibleVerse.map(dynamic obj) {
    this.bookId = obj['b'];
    this.verseText = obj['t'];
    //this.bookName = obj['n'];
    this.chapterNumber = obj['c'];
    this.verseId = obj['id'];
    this.verseNumber = obj['v'];
    this.isHighlighted = obj['hl'];
  }

  int get bookid => bookId;
  String get versetext => verseText;
  int get verseid => verseId;
  int get chapternumber => chapterNumber;
  int get versenumber => verseNumber;
  int get ishighlighted => isHighlighted;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    if (bookId != null) {
      map['b'] = bookId;
    }
    map['c'] = chapterNumber;
    map['v'] = verseNumber;
    map['t'] = verseText;
    map['hl'] = isHighlighted;
    map['id'] = verseId;


    return map;
  }

  BibleVerse.fromMap(Map<String, dynamic> map) {
    this.bookId = map['b'];
    this.verseText = map['t'];
    this.verseId = map['id'];
    this.verseNumber = map['v'];
    this.chapterNumber = map['c'];
    this.isHighlighted = map['hl'];
  }

}