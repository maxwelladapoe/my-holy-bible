class BibleBook {
  String bookName;
  String abbreviation;
  int bookId;
  int numberOfChapters;

  BibleBook.map(dynamic obj) {
    this.bookId = obj['b'];
    this.bookName = obj['n'];
    this.numberOfChapters = obj['nc'];
    this.abbreviation = obj['abv'];
  }

  int get bookid => bookId;
  String get bookname => bookName;
  int get numberofchapters => numberOfChapters;
  String get abv => abbreviation;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    if (bookId != null) {
      map['b'] = bookId;
    }
    map['n'] = bookName;
    map['nc'] = numberOfChapters;
    map['abv'] = abbreviation;

    return map;
  }

  BibleBook.fromMap(Map<String, dynamic> map) {
    this.bookId = map['b'];
    this.abbreviation = map['abv'];
    this.numberOfChapters = map['nc'];
    this.bookName = map['n'];
  }
}
