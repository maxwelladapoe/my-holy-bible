// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bible_moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class SearchNivVerse extends DataClass implements Insertable<SearchNivVerse> {
  final String bcvName;
  final String bibleBook;
  final String bookId;
  final String chapterNumber;
  final String verseNumber;
  final String verseText;
  final String isHighlighted;
  final String highlightedColor;
  SearchNivVerse(
      {@required this.bcvName,
      @required this.bibleBook,
      @required this.bookId,
      @required this.chapterNumber,
      @required this.verseNumber,
      @required this.verseText,
      @required this.isHighlighted,
      @required this.highlightedColor});
  factory SearchNivVerse.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return SearchNivVerse(
      bcvName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}bcv_name']),
      bibleBook: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}bible_book']),
      bookId:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}book_id']),
      chapterNumber: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}chapter_number']),
      verseNumber: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}verse_number']),
      verseText: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}verse_text']),
      isHighlighted: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_highlighted']),
      highlightedColor: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}highlighted_color']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || bcvName != null) {
      map['bcv_name'] = Variable<String>(bcvName);
    }
    if (!nullToAbsent || bibleBook != null) {
      map['bible_book'] = Variable<String>(bibleBook);
    }
    if (!nullToAbsent || bookId != null) {
      map['book_id'] = Variable<String>(bookId);
    }
    if (!nullToAbsent || chapterNumber != null) {
      map['chapter_number'] = Variable<String>(chapterNumber);
    }
    if (!nullToAbsent || verseNumber != null) {
      map['verse_number'] = Variable<String>(verseNumber);
    }
    if (!nullToAbsent || verseText != null) {
      map['verse_text'] = Variable<String>(verseText);
    }
    if (!nullToAbsent || isHighlighted != null) {
      map['is_highlighted'] = Variable<String>(isHighlighted);
    }
    if (!nullToAbsent || highlightedColor != null) {
      map['highlighted_color'] = Variable<String>(highlightedColor);
    }
    return map;
  }

  SearchNivVersesCompanion toCompanion(bool nullToAbsent) {
    return SearchNivVersesCompanion(
      bcvName: bcvName == null && nullToAbsent
          ? const Value.absent()
          : Value(bcvName),
      bibleBook: bibleBook == null && nullToAbsent
          ? const Value.absent()
          : Value(bibleBook),
      bookId:
          bookId == null && nullToAbsent ? const Value.absent() : Value(bookId),
      chapterNumber: chapterNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(chapterNumber),
      verseNumber: verseNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(verseNumber),
      verseText: verseText == null && nullToAbsent
          ? const Value.absent()
          : Value(verseText),
      isHighlighted: isHighlighted == null && nullToAbsent
          ? const Value.absent()
          : Value(isHighlighted),
      highlightedColor: highlightedColor == null && nullToAbsent
          ? const Value.absent()
          : Value(highlightedColor),
    );
  }

  factory SearchNivVerse.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return SearchNivVerse(
      bcvName: serializer.fromJson<String>(json['bcv_name']),
      bibleBook: serializer.fromJson<String>(json['bible_book']),
      bookId: serializer.fromJson<String>(json['book_id']),
      chapterNumber: serializer.fromJson<String>(json['chapter_number']),
      verseNumber: serializer.fromJson<String>(json['verse_number']),
      verseText: serializer.fromJson<String>(json['verse_text']),
      isHighlighted: serializer.fromJson<String>(json['is_highlighted']),
      highlightedColor: serializer.fromJson<String>(json['highlighted_color']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'bcv_name': serializer.toJson<String>(bcvName),
      'bible_book': serializer.toJson<String>(bibleBook),
      'book_id': serializer.toJson<String>(bookId),
      'chapter_number': serializer.toJson<String>(chapterNumber),
      'verse_number': serializer.toJson<String>(verseNumber),
      'verse_text': serializer.toJson<String>(verseText),
      'is_highlighted': serializer.toJson<String>(isHighlighted),
      'highlighted_color': serializer.toJson<String>(highlightedColor),
    };
  }

  SearchNivVerse copyWith(
          {String bcvName,
          String bibleBook,
          String bookId,
          String chapterNumber,
          String verseNumber,
          String verseText,
          String isHighlighted,
          String highlightedColor}) =>
      SearchNivVerse(
        bcvName: bcvName ?? this.bcvName,
        bibleBook: bibleBook ?? this.bibleBook,
        bookId: bookId ?? this.bookId,
        chapterNumber: chapterNumber ?? this.chapterNumber,
        verseNumber: verseNumber ?? this.verseNumber,
        verseText: verseText ?? this.verseText,
        isHighlighted: isHighlighted ?? this.isHighlighted,
        highlightedColor: highlightedColor ?? this.highlightedColor,
      );
  @override
  String toString() {
    return (StringBuffer('SearchNivVerse(')
          ..write('bcvName: $bcvName, ')
          ..write('bibleBook: $bibleBook, ')
          ..write('bookId: $bookId, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('verseNumber: $verseNumber, ')
          ..write('verseText: $verseText, ')
          ..write('isHighlighted: $isHighlighted, ')
          ..write('highlightedColor: $highlightedColor')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      bcvName.hashCode,
      $mrjc(
          bibleBook.hashCode,
          $mrjc(
              bookId.hashCode,
              $mrjc(
                  chapterNumber.hashCode,
                  $mrjc(
                      verseNumber.hashCode,
                      $mrjc(
                          verseText.hashCode,
                          $mrjc(isHighlighted.hashCode,
                              highlightedColor.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is SearchNivVerse &&
          other.bcvName == this.bcvName &&
          other.bibleBook == this.bibleBook &&
          other.bookId == this.bookId &&
          other.chapterNumber == this.chapterNumber &&
          other.verseNumber == this.verseNumber &&
          other.verseText == this.verseText &&
          other.isHighlighted == this.isHighlighted &&
          other.highlightedColor == this.highlightedColor);
}

class SearchNivVersesCompanion extends UpdateCompanion<SearchNivVerse> {
  final Value<String> bcvName;
  final Value<String> bibleBook;
  final Value<String> bookId;
  final Value<String> chapterNumber;
  final Value<String> verseNumber;
  final Value<String> verseText;
  final Value<String> isHighlighted;
  final Value<String> highlightedColor;
  const SearchNivVersesCompanion({
    this.bcvName = const Value.absent(),
    this.bibleBook = const Value.absent(),
    this.bookId = const Value.absent(),
    this.chapterNumber = const Value.absent(),
    this.verseNumber = const Value.absent(),
    this.verseText = const Value.absent(),
    this.isHighlighted = const Value.absent(),
    this.highlightedColor = const Value.absent(),
  });
  SearchNivVersesCompanion.insert({
    @required String bcvName,
    @required String bibleBook,
    @required String bookId,
    @required String chapterNumber,
    @required String verseNumber,
    @required String verseText,
    @required String isHighlighted,
    @required String highlightedColor,
  })  : bcvName = Value(bcvName),
        bibleBook = Value(bibleBook),
        bookId = Value(bookId),
        chapterNumber = Value(chapterNumber),
        verseNumber = Value(verseNumber),
        verseText = Value(verseText),
        isHighlighted = Value(isHighlighted),
        highlightedColor = Value(highlightedColor);
  static Insertable<SearchNivVerse> custom({
    Expression<String> bcvName,
    Expression<String> bibleBook,
    Expression<String> bookId,
    Expression<String> chapterNumber,
    Expression<String> verseNumber,
    Expression<String> verseText,
    Expression<String> isHighlighted,
    Expression<String> highlightedColor,
  }) {
    return RawValuesInsertable({
      if (bcvName != null) 'bcv_name': bcvName,
      if (bibleBook != null) 'bible_book': bibleBook,
      if (bookId != null) 'book_id': bookId,
      if (chapterNumber != null) 'chapter_number': chapterNumber,
      if (verseNumber != null) 'verse_number': verseNumber,
      if (verseText != null) 'verse_text': verseText,
      if (isHighlighted != null) 'is_highlighted': isHighlighted,
      if (highlightedColor != null) 'highlighted_color': highlightedColor,
    });
  }

  SearchNivVersesCompanion copyWith(
      {Value<String> bcvName,
      Value<String> bibleBook,
      Value<String> bookId,
      Value<String> chapterNumber,
      Value<String> verseNumber,
      Value<String> verseText,
      Value<String> isHighlighted,
      Value<String> highlightedColor}) {
    return SearchNivVersesCompanion(
      bcvName: bcvName ?? this.bcvName,
      bibleBook: bibleBook ?? this.bibleBook,
      bookId: bookId ?? this.bookId,
      chapterNumber: chapterNumber ?? this.chapterNumber,
      verseNumber: verseNumber ?? this.verseNumber,
      verseText: verseText ?? this.verseText,
      isHighlighted: isHighlighted ?? this.isHighlighted,
      highlightedColor: highlightedColor ?? this.highlightedColor,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (bcvName.present) {
      map['bcv_name'] = Variable<String>(bcvName.value);
    }
    if (bibleBook.present) {
      map['bible_book'] = Variable<String>(bibleBook.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<String>(bookId.value);
    }
    if (chapterNumber.present) {
      map['chapter_number'] = Variable<String>(chapterNumber.value);
    }
    if (verseNumber.present) {
      map['verse_number'] = Variable<String>(verseNumber.value);
    }
    if (verseText.present) {
      map['verse_text'] = Variable<String>(verseText.value);
    }
    if (isHighlighted.present) {
      map['is_highlighted'] = Variable<String>(isHighlighted.value);
    }
    if (highlightedColor.present) {
      map['highlighted_color'] = Variable<String>(highlightedColor.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SearchNivVersesCompanion(')
          ..write('bcvName: $bcvName, ')
          ..write('bibleBook: $bibleBook, ')
          ..write('bookId: $bookId, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('verseNumber: $verseNumber, ')
          ..write('verseText: $verseText, ')
          ..write('isHighlighted: $isHighlighted, ')
          ..write('highlightedColor: $highlightedColor')
          ..write(')'))
        .toString();
  }
}

class SearchNivVerses extends Table
    with
        TableInfo<SearchNivVerses, SearchNivVerse>,
        VirtualTableInfo<SearchNivVerses, SearchNivVerse> {
  final GeneratedDatabase _db;
  final String _alias;
  SearchNivVerses(this._db, [this._alias]);
  final VerificationMeta _bcvNameMeta = const VerificationMeta('bcvName');
  GeneratedTextColumn _bcvName;
  GeneratedTextColumn get bcvName => _bcvName ??= _constructBcvName();
  GeneratedTextColumn _constructBcvName() {
    return GeneratedTextColumn('bcv_name', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _bibleBookMeta = const VerificationMeta('bibleBook');
  GeneratedTextColumn _bibleBook;
  GeneratedTextColumn get bibleBook => _bibleBook ??= _constructBibleBook();
  GeneratedTextColumn _constructBibleBook() {
    return GeneratedTextColumn('bible_book', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  GeneratedTextColumn _bookId;
  GeneratedTextColumn get bookId => _bookId ??= _constructBookId();
  GeneratedTextColumn _constructBookId() {
    return GeneratedTextColumn('book_id', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _chapterNumberMeta =
      const VerificationMeta('chapterNumber');
  GeneratedTextColumn _chapterNumber;
  GeneratedTextColumn get chapterNumber =>
      _chapterNumber ??= _constructChapterNumber();
  GeneratedTextColumn _constructChapterNumber() {
    return GeneratedTextColumn('chapter_number', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _verseNumberMeta =
      const VerificationMeta('verseNumber');
  GeneratedTextColumn _verseNumber;
  GeneratedTextColumn get verseNumber =>
      _verseNumber ??= _constructVerseNumber();
  GeneratedTextColumn _constructVerseNumber() {
    return GeneratedTextColumn('verse_number', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _verseTextMeta = const VerificationMeta('verseText');
  GeneratedTextColumn _verseText;
  GeneratedTextColumn get verseText => _verseText ??= _constructVerseText();
  GeneratedTextColumn _constructVerseText() {
    return GeneratedTextColumn('verse_text', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _isHighlightedMeta =
      const VerificationMeta('isHighlighted');
  GeneratedTextColumn _isHighlighted;
  GeneratedTextColumn get isHighlighted =>
      _isHighlighted ??= _constructIsHighlighted();
  GeneratedTextColumn _constructIsHighlighted() {
    return GeneratedTextColumn('is_highlighted', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _highlightedColorMeta =
      const VerificationMeta('highlightedColor');
  GeneratedTextColumn _highlightedColor;
  GeneratedTextColumn get highlightedColor =>
      _highlightedColor ??= _constructHighlightedColor();
  GeneratedTextColumn _constructHighlightedColor() {
    return GeneratedTextColumn('highlighted_color', $tableName, false,
        $customConstraints: '');
  }

  @override
  List<GeneratedColumn> get $columns => [
        bcvName,
        bibleBook,
        bookId,
        chapterNumber,
        verseNumber,
        verseText,
        isHighlighted,
        highlightedColor
      ];
  @override
  SearchNivVerses get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'search_niv_verses';
  @override
  final String actualTableName = 'search_niv_verses';
  @override
  VerificationContext validateIntegrity(Insertable<SearchNivVerse> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('bcv_name')) {
      context.handle(_bcvNameMeta,
          bcvName.isAcceptableOrUnknown(data['bcv_name'], _bcvNameMeta));
    } else if (isInserting) {
      context.missing(_bcvNameMeta);
    }
    if (data.containsKey('bible_book')) {
      context.handle(_bibleBookMeta,
          bibleBook.isAcceptableOrUnknown(data['bible_book'], _bibleBookMeta));
    } else if (isInserting) {
      context.missing(_bibleBookMeta);
    }
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id'], _bookIdMeta));
    } else if (isInserting) {
      context.missing(_bookIdMeta);
    }
    if (data.containsKey('chapter_number')) {
      context.handle(
          _chapterNumberMeta,
          chapterNumber.isAcceptableOrUnknown(
              data['chapter_number'], _chapterNumberMeta));
    } else if (isInserting) {
      context.missing(_chapterNumberMeta);
    }
    if (data.containsKey('verse_number')) {
      context.handle(
          _verseNumberMeta,
          verseNumber.isAcceptableOrUnknown(
              data['verse_number'], _verseNumberMeta));
    } else if (isInserting) {
      context.missing(_verseNumberMeta);
    }
    if (data.containsKey('verse_text')) {
      context.handle(_verseTextMeta,
          verseText.isAcceptableOrUnknown(data['verse_text'], _verseTextMeta));
    } else if (isInserting) {
      context.missing(_verseTextMeta);
    }
    if (data.containsKey('is_highlighted')) {
      context.handle(
          _isHighlightedMeta,
          isHighlighted.isAcceptableOrUnknown(
              data['is_highlighted'], _isHighlightedMeta));
    } else if (isInserting) {
      context.missing(_isHighlightedMeta);
    }
    if (data.containsKey('highlighted_color')) {
      context.handle(
          _highlightedColorMeta,
          highlightedColor.isAcceptableOrUnknown(
              data['highlighted_color'], _highlightedColorMeta));
    } else if (isInserting) {
      context.missing(_highlightedColorMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  SearchNivVerse map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return SearchNivVerse.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  SearchNivVerses createAlias(String alias) {
    return SearchNivVerses(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
  @override
  String get moduleAndArgs =>
      'FTS5(bcv_name, bible_book, book_id, chapter_number, verse_number, verse_text, is_highlighted, highlighted_color)';
}

class SearchKjvVerse extends DataClass implements Insertable<SearchKjvVerse> {
  final String bcvName;
  final String bibleBook;
  final String bookId;
  final String chapterNumber;
  final String verseNumber;
  final String verseText;
  final String isHighlighted;
  final String highlightedColor;
  SearchKjvVerse(
      {@required this.bcvName,
      @required this.bibleBook,
      @required this.bookId,
      @required this.chapterNumber,
      @required this.verseNumber,
      @required this.verseText,
      @required this.isHighlighted,
      @required this.highlightedColor});
  factory SearchKjvVerse.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return SearchKjvVerse(
      bcvName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}bcv_name']),
      bibleBook: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}bible_book']),
      bookId:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}book_id']),
      chapterNumber: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}chapter_number']),
      verseNumber: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}verse_number']),
      verseText: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}verse_text']),
      isHighlighted: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_highlighted']),
      highlightedColor: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}highlighted_color']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || bcvName != null) {
      map['bcv_name'] = Variable<String>(bcvName);
    }
    if (!nullToAbsent || bibleBook != null) {
      map['bible_book'] = Variable<String>(bibleBook);
    }
    if (!nullToAbsent || bookId != null) {
      map['book_id'] = Variable<String>(bookId);
    }
    if (!nullToAbsent || chapterNumber != null) {
      map['chapter_number'] = Variable<String>(chapterNumber);
    }
    if (!nullToAbsent || verseNumber != null) {
      map['verse_number'] = Variable<String>(verseNumber);
    }
    if (!nullToAbsent || verseText != null) {
      map['verse_text'] = Variable<String>(verseText);
    }
    if (!nullToAbsent || isHighlighted != null) {
      map['is_highlighted'] = Variable<String>(isHighlighted);
    }
    if (!nullToAbsent || highlightedColor != null) {
      map['highlighted_color'] = Variable<String>(highlightedColor);
    }
    return map;
  }

  SearchKjvVersesCompanion toCompanion(bool nullToAbsent) {
    return SearchKjvVersesCompanion(
      bcvName: bcvName == null && nullToAbsent
          ? const Value.absent()
          : Value(bcvName),
      bibleBook: bibleBook == null && nullToAbsent
          ? const Value.absent()
          : Value(bibleBook),
      bookId:
          bookId == null && nullToAbsent ? const Value.absent() : Value(bookId),
      chapterNumber: chapterNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(chapterNumber),
      verseNumber: verseNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(verseNumber),
      verseText: verseText == null && nullToAbsent
          ? const Value.absent()
          : Value(verseText),
      isHighlighted: isHighlighted == null && nullToAbsent
          ? const Value.absent()
          : Value(isHighlighted),
      highlightedColor: highlightedColor == null && nullToAbsent
          ? const Value.absent()
          : Value(highlightedColor),
    );
  }

  factory SearchKjvVerse.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return SearchKjvVerse(
      bcvName: serializer.fromJson<String>(json['bcv_name']),
      bibleBook: serializer.fromJson<String>(json['bible_book']),
      bookId: serializer.fromJson<String>(json['book_id']),
      chapterNumber: serializer.fromJson<String>(json['chapter_number']),
      verseNumber: serializer.fromJson<String>(json['verse_number']),
      verseText: serializer.fromJson<String>(json['verse_text']),
      isHighlighted: serializer.fromJson<String>(json['is_highlighted']),
      highlightedColor: serializer.fromJson<String>(json['highlighted_color']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'bcv_name': serializer.toJson<String>(bcvName),
      'bible_book': serializer.toJson<String>(bibleBook),
      'book_id': serializer.toJson<String>(bookId),
      'chapter_number': serializer.toJson<String>(chapterNumber),
      'verse_number': serializer.toJson<String>(verseNumber),
      'verse_text': serializer.toJson<String>(verseText),
      'is_highlighted': serializer.toJson<String>(isHighlighted),
      'highlighted_color': serializer.toJson<String>(highlightedColor),
    };
  }

  SearchKjvVerse copyWith(
          {String bcvName,
          String bibleBook,
          String bookId,
          String chapterNumber,
          String verseNumber,
          String verseText,
          String isHighlighted,
          String highlightedColor}) =>
      SearchKjvVerse(
        bcvName: bcvName ?? this.bcvName,
        bibleBook: bibleBook ?? this.bibleBook,
        bookId: bookId ?? this.bookId,
        chapterNumber: chapterNumber ?? this.chapterNumber,
        verseNumber: verseNumber ?? this.verseNumber,
        verseText: verseText ?? this.verseText,
        isHighlighted: isHighlighted ?? this.isHighlighted,
        highlightedColor: highlightedColor ?? this.highlightedColor,
      );
  @override
  String toString() {
    return (StringBuffer('SearchKjvVerse(')
          ..write('bcvName: $bcvName, ')
          ..write('bibleBook: $bibleBook, ')
          ..write('bookId: $bookId, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('verseNumber: $verseNumber, ')
          ..write('verseText: $verseText, ')
          ..write('isHighlighted: $isHighlighted, ')
          ..write('highlightedColor: $highlightedColor')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      bcvName.hashCode,
      $mrjc(
          bibleBook.hashCode,
          $mrjc(
              bookId.hashCode,
              $mrjc(
                  chapterNumber.hashCode,
                  $mrjc(
                      verseNumber.hashCode,
                      $mrjc(
                          verseText.hashCode,
                          $mrjc(isHighlighted.hashCode,
                              highlightedColor.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is SearchKjvVerse &&
          other.bcvName == this.bcvName &&
          other.bibleBook == this.bibleBook &&
          other.bookId == this.bookId &&
          other.chapterNumber == this.chapterNumber &&
          other.verseNumber == this.verseNumber &&
          other.verseText == this.verseText &&
          other.isHighlighted == this.isHighlighted &&
          other.highlightedColor == this.highlightedColor);
}

class SearchKjvVersesCompanion extends UpdateCompanion<SearchKjvVerse> {
  final Value<String> bcvName;
  final Value<String> bibleBook;
  final Value<String> bookId;
  final Value<String> chapterNumber;
  final Value<String> verseNumber;
  final Value<String> verseText;
  final Value<String> isHighlighted;
  final Value<String> highlightedColor;
  const SearchKjvVersesCompanion({
    this.bcvName = const Value.absent(),
    this.bibleBook = const Value.absent(),
    this.bookId = const Value.absent(),
    this.chapterNumber = const Value.absent(),
    this.verseNumber = const Value.absent(),
    this.verseText = const Value.absent(),
    this.isHighlighted = const Value.absent(),
    this.highlightedColor = const Value.absent(),
  });
  SearchKjvVersesCompanion.insert({
    @required String bcvName,
    @required String bibleBook,
    @required String bookId,
    @required String chapterNumber,
    @required String verseNumber,
    @required String verseText,
    @required String isHighlighted,
    @required String highlightedColor,
  })  : bcvName = Value(bcvName),
        bibleBook = Value(bibleBook),
        bookId = Value(bookId),
        chapterNumber = Value(chapterNumber),
        verseNumber = Value(verseNumber),
        verseText = Value(verseText),
        isHighlighted = Value(isHighlighted),
        highlightedColor = Value(highlightedColor);
  static Insertable<SearchKjvVerse> custom({
    Expression<String> bcvName,
    Expression<String> bibleBook,
    Expression<String> bookId,
    Expression<String> chapterNumber,
    Expression<String> verseNumber,
    Expression<String> verseText,
    Expression<String> isHighlighted,
    Expression<String> highlightedColor,
  }) {
    return RawValuesInsertable({
      if (bcvName != null) 'bcv_name': bcvName,
      if (bibleBook != null) 'bible_book': bibleBook,
      if (bookId != null) 'book_id': bookId,
      if (chapterNumber != null) 'chapter_number': chapterNumber,
      if (verseNumber != null) 'verse_number': verseNumber,
      if (verseText != null) 'verse_text': verseText,
      if (isHighlighted != null) 'is_highlighted': isHighlighted,
      if (highlightedColor != null) 'highlighted_color': highlightedColor,
    });
  }

  SearchKjvVersesCompanion copyWith(
      {Value<String> bcvName,
      Value<String> bibleBook,
      Value<String> bookId,
      Value<String> chapterNumber,
      Value<String> verseNumber,
      Value<String> verseText,
      Value<String> isHighlighted,
      Value<String> highlightedColor}) {
    return SearchKjvVersesCompanion(
      bcvName: bcvName ?? this.bcvName,
      bibleBook: bibleBook ?? this.bibleBook,
      bookId: bookId ?? this.bookId,
      chapterNumber: chapterNumber ?? this.chapterNumber,
      verseNumber: verseNumber ?? this.verseNumber,
      verseText: verseText ?? this.verseText,
      isHighlighted: isHighlighted ?? this.isHighlighted,
      highlightedColor: highlightedColor ?? this.highlightedColor,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (bcvName.present) {
      map['bcv_name'] = Variable<String>(bcvName.value);
    }
    if (bibleBook.present) {
      map['bible_book'] = Variable<String>(bibleBook.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<String>(bookId.value);
    }
    if (chapterNumber.present) {
      map['chapter_number'] = Variable<String>(chapterNumber.value);
    }
    if (verseNumber.present) {
      map['verse_number'] = Variable<String>(verseNumber.value);
    }
    if (verseText.present) {
      map['verse_text'] = Variable<String>(verseText.value);
    }
    if (isHighlighted.present) {
      map['is_highlighted'] = Variable<String>(isHighlighted.value);
    }
    if (highlightedColor.present) {
      map['highlighted_color'] = Variable<String>(highlightedColor.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SearchKjvVersesCompanion(')
          ..write('bcvName: $bcvName, ')
          ..write('bibleBook: $bibleBook, ')
          ..write('bookId: $bookId, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('verseNumber: $verseNumber, ')
          ..write('verseText: $verseText, ')
          ..write('isHighlighted: $isHighlighted, ')
          ..write('highlightedColor: $highlightedColor')
          ..write(')'))
        .toString();
  }
}

class SearchKjvVerses extends Table
    with
        TableInfo<SearchKjvVerses, SearchKjvVerse>,
        VirtualTableInfo<SearchKjvVerses, SearchKjvVerse> {
  final GeneratedDatabase _db;
  final String _alias;
  SearchKjvVerses(this._db, [this._alias]);
  final VerificationMeta _bcvNameMeta = const VerificationMeta('bcvName');
  GeneratedTextColumn _bcvName;
  GeneratedTextColumn get bcvName => _bcvName ??= _constructBcvName();
  GeneratedTextColumn _constructBcvName() {
    return GeneratedTextColumn('bcv_name', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _bibleBookMeta = const VerificationMeta('bibleBook');
  GeneratedTextColumn _bibleBook;
  GeneratedTextColumn get bibleBook => _bibleBook ??= _constructBibleBook();
  GeneratedTextColumn _constructBibleBook() {
    return GeneratedTextColumn('bible_book', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  GeneratedTextColumn _bookId;
  GeneratedTextColumn get bookId => _bookId ??= _constructBookId();
  GeneratedTextColumn _constructBookId() {
    return GeneratedTextColumn('book_id', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _chapterNumberMeta =
      const VerificationMeta('chapterNumber');
  GeneratedTextColumn _chapterNumber;
  GeneratedTextColumn get chapterNumber =>
      _chapterNumber ??= _constructChapterNumber();
  GeneratedTextColumn _constructChapterNumber() {
    return GeneratedTextColumn('chapter_number', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _verseNumberMeta =
      const VerificationMeta('verseNumber');
  GeneratedTextColumn _verseNumber;
  GeneratedTextColumn get verseNumber =>
      _verseNumber ??= _constructVerseNumber();
  GeneratedTextColumn _constructVerseNumber() {
    return GeneratedTextColumn('verse_number', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _verseTextMeta = const VerificationMeta('verseText');
  GeneratedTextColumn _verseText;
  GeneratedTextColumn get verseText => _verseText ??= _constructVerseText();
  GeneratedTextColumn _constructVerseText() {
    return GeneratedTextColumn('verse_text', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _isHighlightedMeta =
      const VerificationMeta('isHighlighted');
  GeneratedTextColumn _isHighlighted;
  GeneratedTextColumn get isHighlighted =>
      _isHighlighted ??= _constructIsHighlighted();
  GeneratedTextColumn _constructIsHighlighted() {
    return GeneratedTextColumn('is_highlighted', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _highlightedColorMeta =
      const VerificationMeta('highlightedColor');
  GeneratedTextColumn _highlightedColor;
  GeneratedTextColumn get highlightedColor =>
      _highlightedColor ??= _constructHighlightedColor();
  GeneratedTextColumn _constructHighlightedColor() {
    return GeneratedTextColumn('highlighted_color', $tableName, false,
        $customConstraints: '');
  }

  @override
  List<GeneratedColumn> get $columns => [
        bcvName,
        bibleBook,
        bookId,
        chapterNumber,
        verseNumber,
        verseText,
        isHighlighted,
        highlightedColor
      ];
  @override
  SearchKjvVerses get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'search_kjv_verses';
  @override
  final String actualTableName = 'search_kjv_verses';
  @override
  VerificationContext validateIntegrity(Insertable<SearchKjvVerse> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('bcv_name')) {
      context.handle(_bcvNameMeta,
          bcvName.isAcceptableOrUnknown(data['bcv_name'], _bcvNameMeta));
    } else if (isInserting) {
      context.missing(_bcvNameMeta);
    }
    if (data.containsKey('bible_book')) {
      context.handle(_bibleBookMeta,
          bibleBook.isAcceptableOrUnknown(data['bible_book'], _bibleBookMeta));
    } else if (isInserting) {
      context.missing(_bibleBookMeta);
    }
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id'], _bookIdMeta));
    } else if (isInserting) {
      context.missing(_bookIdMeta);
    }
    if (data.containsKey('chapter_number')) {
      context.handle(
          _chapterNumberMeta,
          chapterNumber.isAcceptableOrUnknown(
              data['chapter_number'], _chapterNumberMeta));
    } else if (isInserting) {
      context.missing(_chapterNumberMeta);
    }
    if (data.containsKey('verse_number')) {
      context.handle(
          _verseNumberMeta,
          verseNumber.isAcceptableOrUnknown(
              data['verse_number'], _verseNumberMeta));
    } else if (isInserting) {
      context.missing(_verseNumberMeta);
    }
    if (data.containsKey('verse_text')) {
      context.handle(_verseTextMeta,
          verseText.isAcceptableOrUnknown(data['verse_text'], _verseTextMeta));
    } else if (isInserting) {
      context.missing(_verseTextMeta);
    }
    if (data.containsKey('is_highlighted')) {
      context.handle(
          _isHighlightedMeta,
          isHighlighted.isAcceptableOrUnknown(
              data['is_highlighted'], _isHighlightedMeta));
    } else if (isInserting) {
      context.missing(_isHighlightedMeta);
    }
    if (data.containsKey('highlighted_color')) {
      context.handle(
          _highlightedColorMeta,
          highlightedColor.isAcceptableOrUnknown(
              data['highlighted_color'], _highlightedColorMeta));
    } else if (isInserting) {
      context.missing(_highlightedColorMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  SearchKjvVerse map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return SearchKjvVerse.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  SearchKjvVerses createAlias(String alias) {
    return SearchKjvVerses(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
  @override
  String get moduleAndArgs =>
      'FTS5(bcv_name, bible_book, book_id, chapter_number, verse_number, verse_text, is_highlighted, highlighted_color)';
}

class SearchNkjvVerse extends DataClass implements Insertable<SearchNkjvVerse> {
  final String bcvName;
  final String bibleBook;
  final String bookId;
  final String chapterNumber;
  final String verseNumber;
  final String verseText;
  final String isHighlighted;
  final String highlightedColor;
  SearchNkjvVerse(
      {@required this.bcvName,
      @required this.bibleBook,
      @required this.bookId,
      @required this.chapterNumber,
      @required this.verseNumber,
      @required this.verseText,
      @required this.isHighlighted,
      @required this.highlightedColor});
  factory SearchNkjvVerse.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return SearchNkjvVerse(
      bcvName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}bcv_name']),
      bibleBook: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}bible_book']),
      bookId:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}book_id']),
      chapterNumber: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}chapter_number']),
      verseNumber: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}verse_number']),
      verseText: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}verse_text']),
      isHighlighted: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_highlighted']),
      highlightedColor: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}highlighted_color']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || bcvName != null) {
      map['bcv_name'] = Variable<String>(bcvName);
    }
    if (!nullToAbsent || bibleBook != null) {
      map['bible_book'] = Variable<String>(bibleBook);
    }
    if (!nullToAbsent || bookId != null) {
      map['book_id'] = Variable<String>(bookId);
    }
    if (!nullToAbsent || chapterNumber != null) {
      map['chapter_number'] = Variable<String>(chapterNumber);
    }
    if (!nullToAbsent || verseNumber != null) {
      map['verse_number'] = Variable<String>(verseNumber);
    }
    if (!nullToAbsent || verseText != null) {
      map['verse_text'] = Variable<String>(verseText);
    }
    if (!nullToAbsent || isHighlighted != null) {
      map['is_highlighted'] = Variable<String>(isHighlighted);
    }
    if (!nullToAbsent || highlightedColor != null) {
      map['highlighted_color'] = Variable<String>(highlightedColor);
    }
    return map;
  }

  SearchNkjvVersesCompanion toCompanion(bool nullToAbsent) {
    return SearchNkjvVersesCompanion(
      bcvName: bcvName == null && nullToAbsent
          ? const Value.absent()
          : Value(bcvName),
      bibleBook: bibleBook == null && nullToAbsent
          ? const Value.absent()
          : Value(bibleBook),
      bookId:
          bookId == null && nullToAbsent ? const Value.absent() : Value(bookId),
      chapterNumber: chapterNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(chapterNumber),
      verseNumber: verseNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(verseNumber),
      verseText: verseText == null && nullToAbsent
          ? const Value.absent()
          : Value(verseText),
      isHighlighted: isHighlighted == null && nullToAbsent
          ? const Value.absent()
          : Value(isHighlighted),
      highlightedColor: highlightedColor == null && nullToAbsent
          ? const Value.absent()
          : Value(highlightedColor),
    );
  }

  factory SearchNkjvVerse.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return SearchNkjvVerse(
      bcvName: serializer.fromJson<String>(json['bcv_name']),
      bibleBook: serializer.fromJson<String>(json['bible_book']),
      bookId: serializer.fromJson<String>(json['book_id']),
      chapterNumber: serializer.fromJson<String>(json['chapter_number']),
      verseNumber: serializer.fromJson<String>(json['verse_number']),
      verseText: serializer.fromJson<String>(json['verse_text']),
      isHighlighted: serializer.fromJson<String>(json['is_highlighted']),
      highlightedColor: serializer.fromJson<String>(json['highlighted_color']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'bcv_name': serializer.toJson<String>(bcvName),
      'bible_book': serializer.toJson<String>(bibleBook),
      'book_id': serializer.toJson<String>(bookId),
      'chapter_number': serializer.toJson<String>(chapterNumber),
      'verse_number': serializer.toJson<String>(verseNumber),
      'verse_text': serializer.toJson<String>(verseText),
      'is_highlighted': serializer.toJson<String>(isHighlighted),
      'highlighted_color': serializer.toJson<String>(highlightedColor),
    };
  }

  SearchNkjvVerse copyWith(
          {String bcvName,
          String bibleBook,
          String bookId,
          String chapterNumber,
          String verseNumber,
          String verseText,
          String isHighlighted,
          String highlightedColor}) =>
      SearchNkjvVerse(
        bcvName: bcvName ?? this.bcvName,
        bibleBook: bibleBook ?? this.bibleBook,
        bookId: bookId ?? this.bookId,
        chapterNumber: chapterNumber ?? this.chapterNumber,
        verseNumber: verseNumber ?? this.verseNumber,
        verseText: verseText ?? this.verseText,
        isHighlighted: isHighlighted ?? this.isHighlighted,
        highlightedColor: highlightedColor ?? this.highlightedColor,
      );
  @override
  String toString() {
    return (StringBuffer('SearchNkjvVerse(')
          ..write('bcvName: $bcvName, ')
          ..write('bibleBook: $bibleBook, ')
          ..write('bookId: $bookId, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('verseNumber: $verseNumber, ')
          ..write('verseText: $verseText, ')
          ..write('isHighlighted: $isHighlighted, ')
          ..write('highlightedColor: $highlightedColor')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      bcvName.hashCode,
      $mrjc(
          bibleBook.hashCode,
          $mrjc(
              bookId.hashCode,
              $mrjc(
                  chapterNumber.hashCode,
                  $mrjc(
                      verseNumber.hashCode,
                      $mrjc(
                          verseText.hashCode,
                          $mrjc(isHighlighted.hashCode,
                              highlightedColor.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is SearchNkjvVerse &&
          other.bcvName == this.bcvName &&
          other.bibleBook == this.bibleBook &&
          other.bookId == this.bookId &&
          other.chapterNumber == this.chapterNumber &&
          other.verseNumber == this.verseNumber &&
          other.verseText == this.verseText &&
          other.isHighlighted == this.isHighlighted &&
          other.highlightedColor == this.highlightedColor);
}

class SearchNkjvVersesCompanion extends UpdateCompanion<SearchNkjvVerse> {
  final Value<String> bcvName;
  final Value<String> bibleBook;
  final Value<String> bookId;
  final Value<String> chapterNumber;
  final Value<String> verseNumber;
  final Value<String> verseText;
  final Value<String> isHighlighted;
  final Value<String> highlightedColor;
  const SearchNkjvVersesCompanion({
    this.bcvName = const Value.absent(),
    this.bibleBook = const Value.absent(),
    this.bookId = const Value.absent(),
    this.chapterNumber = const Value.absent(),
    this.verseNumber = const Value.absent(),
    this.verseText = const Value.absent(),
    this.isHighlighted = const Value.absent(),
    this.highlightedColor = const Value.absent(),
  });
  SearchNkjvVersesCompanion.insert({
    @required String bcvName,
    @required String bibleBook,
    @required String bookId,
    @required String chapterNumber,
    @required String verseNumber,
    @required String verseText,
    @required String isHighlighted,
    @required String highlightedColor,
  })  : bcvName = Value(bcvName),
        bibleBook = Value(bibleBook),
        bookId = Value(bookId),
        chapterNumber = Value(chapterNumber),
        verseNumber = Value(verseNumber),
        verseText = Value(verseText),
        isHighlighted = Value(isHighlighted),
        highlightedColor = Value(highlightedColor);
  static Insertable<SearchNkjvVerse> custom({
    Expression<String> bcvName,
    Expression<String> bibleBook,
    Expression<String> bookId,
    Expression<String> chapterNumber,
    Expression<String> verseNumber,
    Expression<String> verseText,
    Expression<String> isHighlighted,
    Expression<String> highlightedColor,
  }) {
    return RawValuesInsertable({
      if (bcvName != null) 'bcv_name': bcvName,
      if (bibleBook != null) 'bible_book': bibleBook,
      if (bookId != null) 'book_id': bookId,
      if (chapterNumber != null) 'chapter_number': chapterNumber,
      if (verseNumber != null) 'verse_number': verseNumber,
      if (verseText != null) 'verse_text': verseText,
      if (isHighlighted != null) 'is_highlighted': isHighlighted,
      if (highlightedColor != null) 'highlighted_color': highlightedColor,
    });
  }

  SearchNkjvVersesCompanion copyWith(
      {Value<String> bcvName,
      Value<String> bibleBook,
      Value<String> bookId,
      Value<String> chapterNumber,
      Value<String> verseNumber,
      Value<String> verseText,
      Value<String> isHighlighted,
      Value<String> highlightedColor}) {
    return SearchNkjvVersesCompanion(
      bcvName: bcvName ?? this.bcvName,
      bibleBook: bibleBook ?? this.bibleBook,
      bookId: bookId ?? this.bookId,
      chapterNumber: chapterNumber ?? this.chapterNumber,
      verseNumber: verseNumber ?? this.verseNumber,
      verseText: verseText ?? this.verseText,
      isHighlighted: isHighlighted ?? this.isHighlighted,
      highlightedColor: highlightedColor ?? this.highlightedColor,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (bcvName.present) {
      map['bcv_name'] = Variable<String>(bcvName.value);
    }
    if (bibleBook.present) {
      map['bible_book'] = Variable<String>(bibleBook.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<String>(bookId.value);
    }
    if (chapterNumber.present) {
      map['chapter_number'] = Variable<String>(chapterNumber.value);
    }
    if (verseNumber.present) {
      map['verse_number'] = Variable<String>(verseNumber.value);
    }
    if (verseText.present) {
      map['verse_text'] = Variable<String>(verseText.value);
    }
    if (isHighlighted.present) {
      map['is_highlighted'] = Variable<String>(isHighlighted.value);
    }
    if (highlightedColor.present) {
      map['highlighted_color'] = Variable<String>(highlightedColor.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SearchNkjvVersesCompanion(')
          ..write('bcvName: $bcvName, ')
          ..write('bibleBook: $bibleBook, ')
          ..write('bookId: $bookId, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('verseNumber: $verseNumber, ')
          ..write('verseText: $verseText, ')
          ..write('isHighlighted: $isHighlighted, ')
          ..write('highlightedColor: $highlightedColor')
          ..write(')'))
        .toString();
  }
}

class SearchNkjvVerses extends Table
    with
        TableInfo<SearchNkjvVerses, SearchNkjvVerse>,
        VirtualTableInfo<SearchNkjvVerses, SearchNkjvVerse> {
  final GeneratedDatabase _db;
  final String _alias;
  SearchNkjvVerses(this._db, [this._alias]);
  final VerificationMeta _bcvNameMeta = const VerificationMeta('bcvName');
  GeneratedTextColumn _bcvName;
  GeneratedTextColumn get bcvName => _bcvName ??= _constructBcvName();
  GeneratedTextColumn _constructBcvName() {
    return GeneratedTextColumn('bcv_name', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _bibleBookMeta = const VerificationMeta('bibleBook');
  GeneratedTextColumn _bibleBook;
  GeneratedTextColumn get bibleBook => _bibleBook ??= _constructBibleBook();
  GeneratedTextColumn _constructBibleBook() {
    return GeneratedTextColumn('bible_book', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  GeneratedTextColumn _bookId;
  GeneratedTextColumn get bookId => _bookId ??= _constructBookId();
  GeneratedTextColumn _constructBookId() {
    return GeneratedTextColumn('book_id', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _chapterNumberMeta =
      const VerificationMeta('chapterNumber');
  GeneratedTextColumn _chapterNumber;
  GeneratedTextColumn get chapterNumber =>
      _chapterNumber ??= _constructChapterNumber();
  GeneratedTextColumn _constructChapterNumber() {
    return GeneratedTextColumn('chapter_number', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _verseNumberMeta =
      const VerificationMeta('verseNumber');
  GeneratedTextColumn _verseNumber;
  GeneratedTextColumn get verseNumber =>
      _verseNumber ??= _constructVerseNumber();
  GeneratedTextColumn _constructVerseNumber() {
    return GeneratedTextColumn('verse_number', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _verseTextMeta = const VerificationMeta('verseText');
  GeneratedTextColumn _verseText;
  GeneratedTextColumn get verseText => _verseText ??= _constructVerseText();
  GeneratedTextColumn _constructVerseText() {
    return GeneratedTextColumn('verse_text', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _isHighlightedMeta =
      const VerificationMeta('isHighlighted');
  GeneratedTextColumn _isHighlighted;
  GeneratedTextColumn get isHighlighted =>
      _isHighlighted ??= _constructIsHighlighted();
  GeneratedTextColumn _constructIsHighlighted() {
    return GeneratedTextColumn('is_highlighted', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _highlightedColorMeta =
      const VerificationMeta('highlightedColor');
  GeneratedTextColumn _highlightedColor;
  GeneratedTextColumn get highlightedColor =>
      _highlightedColor ??= _constructHighlightedColor();
  GeneratedTextColumn _constructHighlightedColor() {
    return GeneratedTextColumn('highlighted_color', $tableName, false,
        $customConstraints: '');
  }

  @override
  List<GeneratedColumn> get $columns => [
        bcvName,
        bibleBook,
        bookId,
        chapterNumber,
        verseNumber,
        verseText,
        isHighlighted,
        highlightedColor
      ];
  @override
  SearchNkjvVerses get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'search_nkjv_verses';
  @override
  final String actualTableName = 'search_nkjv_verses';
  @override
  VerificationContext validateIntegrity(Insertable<SearchNkjvVerse> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('bcv_name')) {
      context.handle(_bcvNameMeta,
          bcvName.isAcceptableOrUnknown(data['bcv_name'], _bcvNameMeta));
    } else if (isInserting) {
      context.missing(_bcvNameMeta);
    }
    if (data.containsKey('bible_book')) {
      context.handle(_bibleBookMeta,
          bibleBook.isAcceptableOrUnknown(data['bible_book'], _bibleBookMeta));
    } else if (isInserting) {
      context.missing(_bibleBookMeta);
    }
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id'], _bookIdMeta));
    } else if (isInserting) {
      context.missing(_bookIdMeta);
    }
    if (data.containsKey('chapter_number')) {
      context.handle(
          _chapterNumberMeta,
          chapterNumber.isAcceptableOrUnknown(
              data['chapter_number'], _chapterNumberMeta));
    } else if (isInserting) {
      context.missing(_chapterNumberMeta);
    }
    if (data.containsKey('verse_number')) {
      context.handle(
          _verseNumberMeta,
          verseNumber.isAcceptableOrUnknown(
              data['verse_number'], _verseNumberMeta));
    } else if (isInserting) {
      context.missing(_verseNumberMeta);
    }
    if (data.containsKey('verse_text')) {
      context.handle(_verseTextMeta,
          verseText.isAcceptableOrUnknown(data['verse_text'], _verseTextMeta));
    } else if (isInserting) {
      context.missing(_verseTextMeta);
    }
    if (data.containsKey('is_highlighted')) {
      context.handle(
          _isHighlightedMeta,
          isHighlighted.isAcceptableOrUnknown(
              data['is_highlighted'], _isHighlightedMeta));
    } else if (isInserting) {
      context.missing(_isHighlightedMeta);
    }
    if (data.containsKey('highlighted_color')) {
      context.handle(
          _highlightedColorMeta,
          highlightedColor.isAcceptableOrUnknown(
              data['highlighted_color'], _highlightedColorMeta));
    } else if (isInserting) {
      context.missing(_highlightedColorMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  SearchNkjvVerse map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return SearchNkjvVerse.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  SearchNkjvVerses createAlias(String alias) {
    return SearchNkjvVerses(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
  @override
  String get moduleAndArgs =>
      'FTS5(bcv_name, bible_book, book_id, chapter_number, verse_number, verse_text, is_highlighted, highlighted_color)';
}

class SearchMsgVerse extends DataClass implements Insertable<SearchMsgVerse> {
  final String bcvName;
  final String bibleBook;
  final String bookId;
  final String chapterNumber;
  final String verseNumber;
  final String verseText;
  final String isHighlighted;
  final String highlightedColor;
  SearchMsgVerse(
      {@required this.bcvName,
      @required this.bibleBook,
      @required this.bookId,
      @required this.chapterNumber,
      @required this.verseNumber,
      @required this.verseText,
      @required this.isHighlighted,
      @required this.highlightedColor});
  factory SearchMsgVerse.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return SearchMsgVerse(
      bcvName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}bcv_name']),
      bibleBook: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}bible_book']),
      bookId:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}book_id']),
      chapterNumber: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}chapter_number']),
      verseNumber: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}verse_number']),
      verseText: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}verse_text']),
      isHighlighted: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_highlighted']),
      highlightedColor: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}highlighted_color']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || bcvName != null) {
      map['bcv_name'] = Variable<String>(bcvName);
    }
    if (!nullToAbsent || bibleBook != null) {
      map['bible_book'] = Variable<String>(bibleBook);
    }
    if (!nullToAbsent || bookId != null) {
      map['book_id'] = Variable<String>(bookId);
    }
    if (!nullToAbsent || chapterNumber != null) {
      map['chapter_number'] = Variable<String>(chapterNumber);
    }
    if (!nullToAbsent || verseNumber != null) {
      map['verse_number'] = Variable<String>(verseNumber);
    }
    if (!nullToAbsent || verseText != null) {
      map['verse_text'] = Variable<String>(verseText);
    }
    if (!nullToAbsent || isHighlighted != null) {
      map['is_highlighted'] = Variable<String>(isHighlighted);
    }
    if (!nullToAbsent || highlightedColor != null) {
      map['highlighted_color'] = Variable<String>(highlightedColor);
    }
    return map;
  }

  SearchMsgVersesCompanion toCompanion(bool nullToAbsent) {
    return SearchMsgVersesCompanion(
      bcvName: bcvName == null && nullToAbsent
          ? const Value.absent()
          : Value(bcvName),
      bibleBook: bibleBook == null && nullToAbsent
          ? const Value.absent()
          : Value(bibleBook),
      bookId:
          bookId == null && nullToAbsent ? const Value.absent() : Value(bookId),
      chapterNumber: chapterNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(chapterNumber),
      verseNumber: verseNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(verseNumber),
      verseText: verseText == null && nullToAbsent
          ? const Value.absent()
          : Value(verseText),
      isHighlighted: isHighlighted == null && nullToAbsent
          ? const Value.absent()
          : Value(isHighlighted),
      highlightedColor: highlightedColor == null && nullToAbsent
          ? const Value.absent()
          : Value(highlightedColor),
    );
  }

  factory SearchMsgVerse.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return SearchMsgVerse(
      bcvName: serializer.fromJson<String>(json['bcv_name']),
      bibleBook: serializer.fromJson<String>(json['bible_book']),
      bookId: serializer.fromJson<String>(json['book_id']),
      chapterNumber: serializer.fromJson<String>(json['chapter_number']),
      verseNumber: serializer.fromJson<String>(json['verse_number']),
      verseText: serializer.fromJson<String>(json['verse_text']),
      isHighlighted: serializer.fromJson<String>(json['is_highlighted']),
      highlightedColor: serializer.fromJson<String>(json['highlighted_color']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'bcv_name': serializer.toJson<String>(bcvName),
      'bible_book': serializer.toJson<String>(bibleBook),
      'book_id': serializer.toJson<String>(bookId),
      'chapter_number': serializer.toJson<String>(chapterNumber),
      'verse_number': serializer.toJson<String>(verseNumber),
      'verse_text': serializer.toJson<String>(verseText),
      'is_highlighted': serializer.toJson<String>(isHighlighted),
      'highlighted_color': serializer.toJson<String>(highlightedColor),
    };
  }

  SearchMsgVerse copyWith(
          {String bcvName,
          String bibleBook,
          String bookId,
          String chapterNumber,
          String verseNumber,
          String verseText,
          String isHighlighted,
          String highlightedColor}) =>
      SearchMsgVerse(
        bcvName: bcvName ?? this.bcvName,
        bibleBook: bibleBook ?? this.bibleBook,
        bookId: bookId ?? this.bookId,
        chapterNumber: chapterNumber ?? this.chapterNumber,
        verseNumber: verseNumber ?? this.verseNumber,
        verseText: verseText ?? this.verseText,
        isHighlighted: isHighlighted ?? this.isHighlighted,
        highlightedColor: highlightedColor ?? this.highlightedColor,
      );
  @override
  String toString() {
    return (StringBuffer('SearchMsgVerse(')
          ..write('bcvName: $bcvName, ')
          ..write('bibleBook: $bibleBook, ')
          ..write('bookId: $bookId, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('verseNumber: $verseNumber, ')
          ..write('verseText: $verseText, ')
          ..write('isHighlighted: $isHighlighted, ')
          ..write('highlightedColor: $highlightedColor')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      bcvName.hashCode,
      $mrjc(
          bibleBook.hashCode,
          $mrjc(
              bookId.hashCode,
              $mrjc(
                  chapterNumber.hashCode,
                  $mrjc(
                      verseNumber.hashCode,
                      $mrjc(
                          verseText.hashCode,
                          $mrjc(isHighlighted.hashCode,
                              highlightedColor.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is SearchMsgVerse &&
          other.bcvName == this.bcvName &&
          other.bibleBook == this.bibleBook &&
          other.bookId == this.bookId &&
          other.chapterNumber == this.chapterNumber &&
          other.verseNumber == this.verseNumber &&
          other.verseText == this.verseText &&
          other.isHighlighted == this.isHighlighted &&
          other.highlightedColor == this.highlightedColor);
}

class SearchMsgVersesCompanion extends UpdateCompanion<SearchMsgVerse> {
  final Value<String> bcvName;
  final Value<String> bibleBook;
  final Value<String> bookId;
  final Value<String> chapterNumber;
  final Value<String> verseNumber;
  final Value<String> verseText;
  final Value<String> isHighlighted;
  final Value<String> highlightedColor;
  const SearchMsgVersesCompanion({
    this.bcvName = const Value.absent(),
    this.bibleBook = const Value.absent(),
    this.bookId = const Value.absent(),
    this.chapterNumber = const Value.absent(),
    this.verseNumber = const Value.absent(),
    this.verseText = const Value.absent(),
    this.isHighlighted = const Value.absent(),
    this.highlightedColor = const Value.absent(),
  });
  SearchMsgVersesCompanion.insert({
    @required String bcvName,
    @required String bibleBook,
    @required String bookId,
    @required String chapterNumber,
    @required String verseNumber,
    @required String verseText,
    @required String isHighlighted,
    @required String highlightedColor,
  })  : bcvName = Value(bcvName),
        bibleBook = Value(bibleBook),
        bookId = Value(bookId),
        chapterNumber = Value(chapterNumber),
        verseNumber = Value(verseNumber),
        verseText = Value(verseText),
        isHighlighted = Value(isHighlighted),
        highlightedColor = Value(highlightedColor);
  static Insertable<SearchMsgVerse> custom({
    Expression<String> bcvName,
    Expression<String> bibleBook,
    Expression<String> bookId,
    Expression<String> chapterNumber,
    Expression<String> verseNumber,
    Expression<String> verseText,
    Expression<String> isHighlighted,
    Expression<String> highlightedColor,
  }) {
    return RawValuesInsertable({
      if (bcvName != null) 'bcv_name': bcvName,
      if (bibleBook != null) 'bible_book': bibleBook,
      if (bookId != null) 'book_id': bookId,
      if (chapterNumber != null) 'chapter_number': chapterNumber,
      if (verseNumber != null) 'verse_number': verseNumber,
      if (verseText != null) 'verse_text': verseText,
      if (isHighlighted != null) 'is_highlighted': isHighlighted,
      if (highlightedColor != null) 'highlighted_color': highlightedColor,
    });
  }

  SearchMsgVersesCompanion copyWith(
      {Value<String> bcvName,
      Value<String> bibleBook,
      Value<String> bookId,
      Value<String> chapterNumber,
      Value<String> verseNumber,
      Value<String> verseText,
      Value<String> isHighlighted,
      Value<String> highlightedColor}) {
    return SearchMsgVersesCompanion(
      bcvName: bcvName ?? this.bcvName,
      bibleBook: bibleBook ?? this.bibleBook,
      bookId: bookId ?? this.bookId,
      chapterNumber: chapterNumber ?? this.chapterNumber,
      verseNumber: verseNumber ?? this.verseNumber,
      verseText: verseText ?? this.verseText,
      isHighlighted: isHighlighted ?? this.isHighlighted,
      highlightedColor: highlightedColor ?? this.highlightedColor,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (bcvName.present) {
      map['bcv_name'] = Variable<String>(bcvName.value);
    }
    if (bibleBook.present) {
      map['bible_book'] = Variable<String>(bibleBook.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<String>(bookId.value);
    }
    if (chapterNumber.present) {
      map['chapter_number'] = Variable<String>(chapterNumber.value);
    }
    if (verseNumber.present) {
      map['verse_number'] = Variable<String>(verseNumber.value);
    }
    if (verseText.present) {
      map['verse_text'] = Variable<String>(verseText.value);
    }
    if (isHighlighted.present) {
      map['is_highlighted'] = Variable<String>(isHighlighted.value);
    }
    if (highlightedColor.present) {
      map['highlighted_color'] = Variable<String>(highlightedColor.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SearchMsgVersesCompanion(')
          ..write('bcvName: $bcvName, ')
          ..write('bibleBook: $bibleBook, ')
          ..write('bookId: $bookId, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('verseNumber: $verseNumber, ')
          ..write('verseText: $verseText, ')
          ..write('isHighlighted: $isHighlighted, ')
          ..write('highlightedColor: $highlightedColor')
          ..write(')'))
        .toString();
  }
}

class SearchMsgVerses extends Table
    with
        TableInfo<SearchMsgVerses, SearchMsgVerse>,
        VirtualTableInfo<SearchMsgVerses, SearchMsgVerse> {
  final GeneratedDatabase _db;
  final String _alias;
  SearchMsgVerses(this._db, [this._alias]);
  final VerificationMeta _bcvNameMeta = const VerificationMeta('bcvName');
  GeneratedTextColumn _bcvName;
  GeneratedTextColumn get bcvName => _bcvName ??= _constructBcvName();
  GeneratedTextColumn _constructBcvName() {
    return GeneratedTextColumn('bcv_name', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _bibleBookMeta = const VerificationMeta('bibleBook');
  GeneratedTextColumn _bibleBook;
  GeneratedTextColumn get bibleBook => _bibleBook ??= _constructBibleBook();
  GeneratedTextColumn _constructBibleBook() {
    return GeneratedTextColumn('bible_book', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  GeneratedTextColumn _bookId;
  GeneratedTextColumn get bookId => _bookId ??= _constructBookId();
  GeneratedTextColumn _constructBookId() {
    return GeneratedTextColumn('book_id', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _chapterNumberMeta =
      const VerificationMeta('chapterNumber');
  GeneratedTextColumn _chapterNumber;
  GeneratedTextColumn get chapterNumber =>
      _chapterNumber ??= _constructChapterNumber();
  GeneratedTextColumn _constructChapterNumber() {
    return GeneratedTextColumn('chapter_number', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _verseNumberMeta =
      const VerificationMeta('verseNumber');
  GeneratedTextColumn _verseNumber;
  GeneratedTextColumn get verseNumber =>
      _verseNumber ??= _constructVerseNumber();
  GeneratedTextColumn _constructVerseNumber() {
    return GeneratedTextColumn('verse_number', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _verseTextMeta = const VerificationMeta('verseText');
  GeneratedTextColumn _verseText;
  GeneratedTextColumn get verseText => _verseText ??= _constructVerseText();
  GeneratedTextColumn _constructVerseText() {
    return GeneratedTextColumn('verse_text', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _isHighlightedMeta =
      const VerificationMeta('isHighlighted');
  GeneratedTextColumn _isHighlighted;
  GeneratedTextColumn get isHighlighted =>
      _isHighlighted ??= _constructIsHighlighted();
  GeneratedTextColumn _constructIsHighlighted() {
    return GeneratedTextColumn('is_highlighted', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _highlightedColorMeta =
      const VerificationMeta('highlightedColor');
  GeneratedTextColumn _highlightedColor;
  GeneratedTextColumn get highlightedColor =>
      _highlightedColor ??= _constructHighlightedColor();
  GeneratedTextColumn _constructHighlightedColor() {
    return GeneratedTextColumn('highlighted_color', $tableName, false,
        $customConstraints: '');
  }

  @override
  List<GeneratedColumn> get $columns => [
        bcvName,
        bibleBook,
        bookId,
        chapterNumber,
        verseNumber,
        verseText,
        isHighlighted,
        highlightedColor
      ];
  @override
  SearchMsgVerses get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'search_msg_verses';
  @override
  final String actualTableName = 'search_msg_verses';
  @override
  VerificationContext validateIntegrity(Insertable<SearchMsgVerse> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('bcv_name')) {
      context.handle(_bcvNameMeta,
          bcvName.isAcceptableOrUnknown(data['bcv_name'], _bcvNameMeta));
    } else if (isInserting) {
      context.missing(_bcvNameMeta);
    }
    if (data.containsKey('bible_book')) {
      context.handle(_bibleBookMeta,
          bibleBook.isAcceptableOrUnknown(data['bible_book'], _bibleBookMeta));
    } else if (isInserting) {
      context.missing(_bibleBookMeta);
    }
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id'], _bookIdMeta));
    } else if (isInserting) {
      context.missing(_bookIdMeta);
    }
    if (data.containsKey('chapter_number')) {
      context.handle(
          _chapterNumberMeta,
          chapterNumber.isAcceptableOrUnknown(
              data['chapter_number'], _chapterNumberMeta));
    } else if (isInserting) {
      context.missing(_chapterNumberMeta);
    }
    if (data.containsKey('verse_number')) {
      context.handle(
          _verseNumberMeta,
          verseNumber.isAcceptableOrUnknown(
              data['verse_number'], _verseNumberMeta));
    } else if (isInserting) {
      context.missing(_verseNumberMeta);
    }
    if (data.containsKey('verse_text')) {
      context.handle(_verseTextMeta,
          verseText.isAcceptableOrUnknown(data['verse_text'], _verseTextMeta));
    } else if (isInserting) {
      context.missing(_verseTextMeta);
    }
    if (data.containsKey('is_highlighted')) {
      context.handle(
          _isHighlightedMeta,
          isHighlighted.isAcceptableOrUnknown(
              data['is_highlighted'], _isHighlightedMeta));
    } else if (isInserting) {
      context.missing(_isHighlightedMeta);
    }
    if (data.containsKey('highlighted_color')) {
      context.handle(
          _highlightedColorMeta,
          highlightedColor.isAcceptableOrUnknown(
              data['highlighted_color'], _highlightedColorMeta));
    } else if (isInserting) {
      context.missing(_highlightedColorMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  SearchMsgVerse map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return SearchMsgVerse.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  SearchMsgVerses createAlias(String alias) {
    return SearchMsgVerses(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
  @override
  String get moduleAndArgs =>
      'FTS5(bcv_name, bible_book, book_id, chapter_number, verse_number, verse_text, is_highlighted, highlighted_color)';
}

class SearchAmpVerse extends DataClass implements Insertable<SearchAmpVerse> {
  final String bcvName;
  final String bibleBook;
  final String bookId;
  final String chapterNumber;
  final String verseNumber;
  final String verseText;
  final String isHighlighted;
  final String highlightedColor;
  SearchAmpVerse(
      {@required this.bcvName,
      @required this.bibleBook,
      @required this.bookId,
      @required this.chapterNumber,
      @required this.verseNumber,
      @required this.verseText,
      @required this.isHighlighted,
      @required this.highlightedColor});
  factory SearchAmpVerse.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return SearchAmpVerse(
      bcvName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}bcv_name']),
      bibleBook: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}bible_book']),
      bookId:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}book_id']),
      chapterNumber: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}chapter_number']),
      verseNumber: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}verse_number']),
      verseText: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}verse_text']),
      isHighlighted: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_highlighted']),
      highlightedColor: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}highlighted_color']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || bcvName != null) {
      map['bcv_name'] = Variable<String>(bcvName);
    }
    if (!nullToAbsent || bibleBook != null) {
      map['bible_book'] = Variable<String>(bibleBook);
    }
    if (!nullToAbsent || bookId != null) {
      map['book_id'] = Variable<String>(bookId);
    }
    if (!nullToAbsent || chapterNumber != null) {
      map['chapter_number'] = Variable<String>(chapterNumber);
    }
    if (!nullToAbsent || verseNumber != null) {
      map['verse_number'] = Variable<String>(verseNumber);
    }
    if (!nullToAbsent || verseText != null) {
      map['verse_text'] = Variable<String>(verseText);
    }
    if (!nullToAbsent || isHighlighted != null) {
      map['is_highlighted'] = Variable<String>(isHighlighted);
    }
    if (!nullToAbsent || highlightedColor != null) {
      map['highlighted_color'] = Variable<String>(highlightedColor);
    }
    return map;
  }

  SearchAmpVersesCompanion toCompanion(bool nullToAbsent) {
    return SearchAmpVersesCompanion(
      bcvName: bcvName == null && nullToAbsent
          ? const Value.absent()
          : Value(bcvName),
      bibleBook: bibleBook == null && nullToAbsent
          ? const Value.absent()
          : Value(bibleBook),
      bookId:
          bookId == null && nullToAbsent ? const Value.absent() : Value(bookId),
      chapterNumber: chapterNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(chapterNumber),
      verseNumber: verseNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(verseNumber),
      verseText: verseText == null && nullToAbsent
          ? const Value.absent()
          : Value(verseText),
      isHighlighted: isHighlighted == null && nullToAbsent
          ? const Value.absent()
          : Value(isHighlighted),
      highlightedColor: highlightedColor == null && nullToAbsent
          ? const Value.absent()
          : Value(highlightedColor),
    );
  }

  factory SearchAmpVerse.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return SearchAmpVerse(
      bcvName: serializer.fromJson<String>(json['bcv_name']),
      bibleBook: serializer.fromJson<String>(json['bible_book']),
      bookId: serializer.fromJson<String>(json['book_id']),
      chapterNumber: serializer.fromJson<String>(json['chapter_number']),
      verseNumber: serializer.fromJson<String>(json['verse_number']),
      verseText: serializer.fromJson<String>(json['verse_text']),
      isHighlighted: serializer.fromJson<String>(json['is_highlighted']),
      highlightedColor: serializer.fromJson<String>(json['highlighted_color']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'bcv_name': serializer.toJson<String>(bcvName),
      'bible_book': serializer.toJson<String>(bibleBook),
      'book_id': serializer.toJson<String>(bookId),
      'chapter_number': serializer.toJson<String>(chapterNumber),
      'verse_number': serializer.toJson<String>(verseNumber),
      'verse_text': serializer.toJson<String>(verseText),
      'is_highlighted': serializer.toJson<String>(isHighlighted),
      'highlighted_color': serializer.toJson<String>(highlightedColor),
    };
  }

  SearchAmpVerse copyWith(
          {String bcvName,
          String bibleBook,
          String bookId,
          String chapterNumber,
          String verseNumber,
          String verseText,
          String isHighlighted,
          String highlightedColor}) =>
      SearchAmpVerse(
        bcvName: bcvName ?? this.bcvName,
        bibleBook: bibleBook ?? this.bibleBook,
        bookId: bookId ?? this.bookId,
        chapterNumber: chapterNumber ?? this.chapterNumber,
        verseNumber: verseNumber ?? this.verseNumber,
        verseText: verseText ?? this.verseText,
        isHighlighted: isHighlighted ?? this.isHighlighted,
        highlightedColor: highlightedColor ?? this.highlightedColor,
      );
  @override
  String toString() {
    return (StringBuffer('SearchAmpVerse(')
          ..write('bcvName: $bcvName, ')
          ..write('bibleBook: $bibleBook, ')
          ..write('bookId: $bookId, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('verseNumber: $verseNumber, ')
          ..write('verseText: $verseText, ')
          ..write('isHighlighted: $isHighlighted, ')
          ..write('highlightedColor: $highlightedColor')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      bcvName.hashCode,
      $mrjc(
          bibleBook.hashCode,
          $mrjc(
              bookId.hashCode,
              $mrjc(
                  chapterNumber.hashCode,
                  $mrjc(
                      verseNumber.hashCode,
                      $mrjc(
                          verseText.hashCode,
                          $mrjc(isHighlighted.hashCode,
                              highlightedColor.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is SearchAmpVerse &&
          other.bcvName == this.bcvName &&
          other.bibleBook == this.bibleBook &&
          other.bookId == this.bookId &&
          other.chapterNumber == this.chapterNumber &&
          other.verseNumber == this.verseNumber &&
          other.verseText == this.verseText &&
          other.isHighlighted == this.isHighlighted &&
          other.highlightedColor == this.highlightedColor);
}

class SearchAmpVersesCompanion extends UpdateCompanion<SearchAmpVerse> {
  final Value<String> bcvName;
  final Value<String> bibleBook;
  final Value<String> bookId;
  final Value<String> chapterNumber;
  final Value<String> verseNumber;
  final Value<String> verseText;
  final Value<String> isHighlighted;
  final Value<String> highlightedColor;
  const SearchAmpVersesCompanion({
    this.bcvName = const Value.absent(),
    this.bibleBook = const Value.absent(),
    this.bookId = const Value.absent(),
    this.chapterNumber = const Value.absent(),
    this.verseNumber = const Value.absent(),
    this.verseText = const Value.absent(),
    this.isHighlighted = const Value.absent(),
    this.highlightedColor = const Value.absent(),
  });
  SearchAmpVersesCompanion.insert({
    @required String bcvName,
    @required String bibleBook,
    @required String bookId,
    @required String chapterNumber,
    @required String verseNumber,
    @required String verseText,
    @required String isHighlighted,
    @required String highlightedColor,
  })  : bcvName = Value(bcvName),
        bibleBook = Value(bibleBook),
        bookId = Value(bookId),
        chapterNumber = Value(chapterNumber),
        verseNumber = Value(verseNumber),
        verseText = Value(verseText),
        isHighlighted = Value(isHighlighted),
        highlightedColor = Value(highlightedColor);
  static Insertable<SearchAmpVerse> custom({
    Expression<String> bcvName,
    Expression<String> bibleBook,
    Expression<String> bookId,
    Expression<String> chapterNumber,
    Expression<String> verseNumber,
    Expression<String> verseText,
    Expression<String> isHighlighted,
    Expression<String> highlightedColor,
  }) {
    return RawValuesInsertable({
      if (bcvName != null) 'bcv_name': bcvName,
      if (bibleBook != null) 'bible_book': bibleBook,
      if (bookId != null) 'book_id': bookId,
      if (chapterNumber != null) 'chapter_number': chapterNumber,
      if (verseNumber != null) 'verse_number': verseNumber,
      if (verseText != null) 'verse_text': verseText,
      if (isHighlighted != null) 'is_highlighted': isHighlighted,
      if (highlightedColor != null) 'highlighted_color': highlightedColor,
    });
  }

  SearchAmpVersesCompanion copyWith(
      {Value<String> bcvName,
      Value<String> bibleBook,
      Value<String> bookId,
      Value<String> chapterNumber,
      Value<String> verseNumber,
      Value<String> verseText,
      Value<String> isHighlighted,
      Value<String> highlightedColor}) {
    return SearchAmpVersesCompanion(
      bcvName: bcvName ?? this.bcvName,
      bibleBook: bibleBook ?? this.bibleBook,
      bookId: bookId ?? this.bookId,
      chapterNumber: chapterNumber ?? this.chapterNumber,
      verseNumber: verseNumber ?? this.verseNumber,
      verseText: verseText ?? this.verseText,
      isHighlighted: isHighlighted ?? this.isHighlighted,
      highlightedColor: highlightedColor ?? this.highlightedColor,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (bcvName.present) {
      map['bcv_name'] = Variable<String>(bcvName.value);
    }
    if (bibleBook.present) {
      map['bible_book'] = Variable<String>(bibleBook.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<String>(bookId.value);
    }
    if (chapterNumber.present) {
      map['chapter_number'] = Variable<String>(chapterNumber.value);
    }
    if (verseNumber.present) {
      map['verse_number'] = Variable<String>(verseNumber.value);
    }
    if (verseText.present) {
      map['verse_text'] = Variable<String>(verseText.value);
    }
    if (isHighlighted.present) {
      map['is_highlighted'] = Variable<String>(isHighlighted.value);
    }
    if (highlightedColor.present) {
      map['highlighted_color'] = Variable<String>(highlightedColor.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SearchAmpVersesCompanion(')
          ..write('bcvName: $bcvName, ')
          ..write('bibleBook: $bibleBook, ')
          ..write('bookId: $bookId, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('verseNumber: $verseNumber, ')
          ..write('verseText: $verseText, ')
          ..write('isHighlighted: $isHighlighted, ')
          ..write('highlightedColor: $highlightedColor')
          ..write(')'))
        .toString();
  }
}

class SearchAmpVerses extends Table
    with
        TableInfo<SearchAmpVerses, SearchAmpVerse>,
        VirtualTableInfo<SearchAmpVerses, SearchAmpVerse> {
  final GeneratedDatabase _db;
  final String _alias;
  SearchAmpVerses(this._db, [this._alias]);
  final VerificationMeta _bcvNameMeta = const VerificationMeta('bcvName');
  GeneratedTextColumn _bcvName;
  GeneratedTextColumn get bcvName => _bcvName ??= _constructBcvName();
  GeneratedTextColumn _constructBcvName() {
    return GeneratedTextColumn('bcv_name', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _bibleBookMeta = const VerificationMeta('bibleBook');
  GeneratedTextColumn _bibleBook;
  GeneratedTextColumn get bibleBook => _bibleBook ??= _constructBibleBook();
  GeneratedTextColumn _constructBibleBook() {
    return GeneratedTextColumn('bible_book', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  GeneratedTextColumn _bookId;
  GeneratedTextColumn get bookId => _bookId ??= _constructBookId();
  GeneratedTextColumn _constructBookId() {
    return GeneratedTextColumn('book_id', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _chapterNumberMeta =
      const VerificationMeta('chapterNumber');
  GeneratedTextColumn _chapterNumber;
  GeneratedTextColumn get chapterNumber =>
      _chapterNumber ??= _constructChapterNumber();
  GeneratedTextColumn _constructChapterNumber() {
    return GeneratedTextColumn('chapter_number', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _verseNumberMeta =
      const VerificationMeta('verseNumber');
  GeneratedTextColumn _verseNumber;
  GeneratedTextColumn get verseNumber =>
      _verseNumber ??= _constructVerseNumber();
  GeneratedTextColumn _constructVerseNumber() {
    return GeneratedTextColumn('verse_number', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _verseTextMeta = const VerificationMeta('verseText');
  GeneratedTextColumn _verseText;
  GeneratedTextColumn get verseText => _verseText ??= _constructVerseText();
  GeneratedTextColumn _constructVerseText() {
    return GeneratedTextColumn('verse_text', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _isHighlightedMeta =
      const VerificationMeta('isHighlighted');
  GeneratedTextColumn _isHighlighted;
  GeneratedTextColumn get isHighlighted =>
      _isHighlighted ??= _constructIsHighlighted();
  GeneratedTextColumn _constructIsHighlighted() {
    return GeneratedTextColumn('is_highlighted', $tableName, false,
        $customConstraints: '');
  }

  final VerificationMeta _highlightedColorMeta =
      const VerificationMeta('highlightedColor');
  GeneratedTextColumn _highlightedColor;
  GeneratedTextColumn get highlightedColor =>
      _highlightedColor ??= _constructHighlightedColor();
  GeneratedTextColumn _constructHighlightedColor() {
    return GeneratedTextColumn('highlighted_color', $tableName, false,
        $customConstraints: '');
  }

  @override
  List<GeneratedColumn> get $columns => [
        bcvName,
        bibleBook,
        bookId,
        chapterNumber,
        verseNumber,
        verseText,
        isHighlighted,
        highlightedColor
      ];
  @override
  SearchAmpVerses get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'search_amp_verses';
  @override
  final String actualTableName = 'search_amp_verses';
  @override
  VerificationContext validateIntegrity(Insertable<SearchAmpVerse> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('bcv_name')) {
      context.handle(_bcvNameMeta,
          bcvName.isAcceptableOrUnknown(data['bcv_name'], _bcvNameMeta));
    } else if (isInserting) {
      context.missing(_bcvNameMeta);
    }
    if (data.containsKey('bible_book')) {
      context.handle(_bibleBookMeta,
          bibleBook.isAcceptableOrUnknown(data['bible_book'], _bibleBookMeta));
    } else if (isInserting) {
      context.missing(_bibleBookMeta);
    }
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id'], _bookIdMeta));
    } else if (isInserting) {
      context.missing(_bookIdMeta);
    }
    if (data.containsKey('chapter_number')) {
      context.handle(
          _chapterNumberMeta,
          chapterNumber.isAcceptableOrUnknown(
              data['chapter_number'], _chapterNumberMeta));
    } else if (isInserting) {
      context.missing(_chapterNumberMeta);
    }
    if (data.containsKey('verse_number')) {
      context.handle(
          _verseNumberMeta,
          verseNumber.isAcceptableOrUnknown(
              data['verse_number'], _verseNumberMeta));
    } else if (isInserting) {
      context.missing(_verseNumberMeta);
    }
    if (data.containsKey('verse_text')) {
      context.handle(_verseTextMeta,
          verseText.isAcceptableOrUnknown(data['verse_text'], _verseTextMeta));
    } else if (isInserting) {
      context.missing(_verseTextMeta);
    }
    if (data.containsKey('is_highlighted')) {
      context.handle(
          _isHighlightedMeta,
          isHighlighted.isAcceptableOrUnknown(
              data['is_highlighted'], _isHighlightedMeta));
    } else if (isInserting) {
      context.missing(_isHighlightedMeta);
    }
    if (data.containsKey('highlighted_color')) {
      context.handle(
          _highlightedColorMeta,
          highlightedColor.isAcceptableOrUnknown(
              data['highlighted_color'], _highlightedColorMeta));
    } else if (isInserting) {
      context.missing(_highlightedColorMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  SearchAmpVerse map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return SearchAmpVerse.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  SearchAmpVerses createAlias(String alias) {
    return SearchAmpVerses(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
  @override
  String get moduleAndArgs =>
      'FTS5(bcv_name, bible_book, book_id, chapter_number, verse_number, verse_text, is_highlighted, highlighted_color)';
}

class MsgBibleVerse extends DataClass implements Insertable<MsgBibleVerse> {
  final int id;
  final int bookId;
  final int chapterNumber;
  final int verseNumber;
  final String verseText;
  final bool isHighlighted;
  final String highlightedColor;
  MsgBibleVerse(
      {@required this.id,
      this.bookId,
      this.chapterNumber,
      this.verseNumber,
      this.verseText,
      @required this.isHighlighted,
      this.highlightedColor});
  factory MsgBibleVerse.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return MsgBibleVerse(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      bookId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}book_id']),
      chapterNumber: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}chapter_number']),
      verseNumber: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}verse_number']),
      verseText: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}verse_text']),
      isHighlighted: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_highlighted']),
      highlightedColor: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}highlighted_color']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || bookId != null) {
      map['book_id'] = Variable<int>(bookId);
    }
    if (!nullToAbsent || chapterNumber != null) {
      map['chapter_number'] = Variable<int>(chapterNumber);
    }
    if (!nullToAbsent || verseNumber != null) {
      map['verse_number'] = Variable<int>(verseNumber);
    }
    if (!nullToAbsent || verseText != null) {
      map['verse_text'] = Variable<String>(verseText);
    }
    if (!nullToAbsent || isHighlighted != null) {
      map['is_highlighted'] = Variable<bool>(isHighlighted);
    }
    if (!nullToAbsent || highlightedColor != null) {
      map['highlighted_color'] = Variable<String>(highlightedColor);
    }
    return map;
  }

  MsgBibleVersesCompanion toCompanion(bool nullToAbsent) {
    return MsgBibleVersesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      bookId:
          bookId == null && nullToAbsent ? const Value.absent() : Value(bookId),
      chapterNumber: chapterNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(chapterNumber),
      verseNumber: verseNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(verseNumber),
      verseText: verseText == null && nullToAbsent
          ? const Value.absent()
          : Value(verseText),
      isHighlighted: isHighlighted == null && nullToAbsent
          ? const Value.absent()
          : Value(isHighlighted),
      highlightedColor: highlightedColor == null && nullToAbsent
          ? const Value.absent()
          : Value(highlightedColor),
    );
  }

  factory MsgBibleVerse.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MsgBibleVerse(
      id: serializer.fromJson<int>(json['id']),
      bookId: serializer.fromJson<int>(json['bookId']),
      chapterNumber: serializer.fromJson<int>(json['chapterNumber']),
      verseNumber: serializer.fromJson<int>(json['verseNumber']),
      verseText: serializer.fromJson<String>(json['verseText']),
      isHighlighted: serializer.fromJson<bool>(json['isHighlighted']),
      highlightedColor: serializer.fromJson<String>(json['highlightedColor']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'bookId': serializer.toJson<int>(bookId),
      'chapterNumber': serializer.toJson<int>(chapterNumber),
      'verseNumber': serializer.toJson<int>(verseNumber),
      'verseText': serializer.toJson<String>(verseText),
      'isHighlighted': serializer.toJson<bool>(isHighlighted),
      'highlightedColor': serializer.toJson<String>(highlightedColor),
    };
  }

  MsgBibleVerse copyWith(
          {int id,
          int bookId,
          int chapterNumber,
          int verseNumber,
          String verseText,
          bool isHighlighted,
          String highlightedColor}) =>
      MsgBibleVerse(
        id: id ?? this.id,
        bookId: bookId ?? this.bookId,
        chapterNumber: chapterNumber ?? this.chapterNumber,
        verseNumber: verseNumber ?? this.verseNumber,
        verseText: verseText ?? this.verseText,
        isHighlighted: isHighlighted ?? this.isHighlighted,
        highlightedColor: highlightedColor ?? this.highlightedColor,
      );
  @override
  String toString() {
    return (StringBuffer('MsgBibleVerse(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('verseNumber: $verseNumber, ')
          ..write('verseText: $verseText, ')
          ..write('isHighlighted: $isHighlighted, ')
          ..write('highlightedColor: $highlightedColor')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          bookId.hashCode,
          $mrjc(
              chapterNumber.hashCode,
              $mrjc(
                  verseNumber.hashCode,
                  $mrjc(
                      verseText.hashCode,
                      $mrjc(isHighlighted.hashCode,
                          highlightedColor.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is MsgBibleVerse &&
          other.id == this.id &&
          other.bookId == this.bookId &&
          other.chapterNumber == this.chapterNumber &&
          other.verseNumber == this.verseNumber &&
          other.verseText == this.verseText &&
          other.isHighlighted == this.isHighlighted &&
          other.highlightedColor == this.highlightedColor);
}

class MsgBibleVersesCompanion extends UpdateCompanion<MsgBibleVerse> {
  final Value<int> id;
  final Value<int> bookId;
  final Value<int> chapterNumber;
  final Value<int> verseNumber;
  final Value<String> verseText;
  final Value<bool> isHighlighted;
  final Value<String> highlightedColor;
  const MsgBibleVersesCompanion({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.chapterNumber = const Value.absent(),
    this.verseNumber = const Value.absent(),
    this.verseText = const Value.absent(),
    this.isHighlighted = const Value.absent(),
    this.highlightedColor = const Value.absent(),
  });
  MsgBibleVersesCompanion.insert({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.chapterNumber = const Value.absent(),
    this.verseNumber = const Value.absent(),
    this.verseText = const Value.absent(),
    this.isHighlighted = const Value.absent(),
    this.highlightedColor = const Value.absent(),
  });
  static Insertable<MsgBibleVerse> custom({
    Expression<int> id,
    Expression<int> bookId,
    Expression<int> chapterNumber,
    Expression<int> verseNumber,
    Expression<String> verseText,
    Expression<bool> isHighlighted,
    Expression<String> highlightedColor,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bookId != null) 'book_id': bookId,
      if (chapterNumber != null) 'chapter_number': chapterNumber,
      if (verseNumber != null) 'verse_number': verseNumber,
      if (verseText != null) 'verse_text': verseText,
      if (isHighlighted != null) 'is_highlighted': isHighlighted,
      if (highlightedColor != null) 'highlighted_color': highlightedColor,
    });
  }

  MsgBibleVersesCompanion copyWith(
      {Value<int> id,
      Value<int> bookId,
      Value<int> chapterNumber,
      Value<int> verseNumber,
      Value<String> verseText,
      Value<bool> isHighlighted,
      Value<String> highlightedColor}) {
    return MsgBibleVersesCompanion(
      id: id ?? this.id,
      bookId: bookId ?? this.bookId,
      chapterNumber: chapterNumber ?? this.chapterNumber,
      verseNumber: verseNumber ?? this.verseNumber,
      verseText: verseText ?? this.verseText,
      isHighlighted: isHighlighted ?? this.isHighlighted,
      highlightedColor: highlightedColor ?? this.highlightedColor,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<int>(bookId.value);
    }
    if (chapterNumber.present) {
      map['chapter_number'] = Variable<int>(chapterNumber.value);
    }
    if (verseNumber.present) {
      map['verse_number'] = Variable<int>(verseNumber.value);
    }
    if (verseText.present) {
      map['verse_text'] = Variable<String>(verseText.value);
    }
    if (isHighlighted.present) {
      map['is_highlighted'] = Variable<bool>(isHighlighted.value);
    }
    if (highlightedColor.present) {
      map['highlighted_color'] = Variable<String>(highlightedColor.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MsgBibleVersesCompanion(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('verseNumber: $verseNumber, ')
          ..write('verseText: $verseText, ')
          ..write('isHighlighted: $isHighlighted, ')
          ..write('highlightedColor: $highlightedColor')
          ..write(')'))
        .toString();
  }
}

class $MsgBibleVersesTable extends MsgBibleVerses
    with TableInfo<$MsgBibleVersesTable, MsgBibleVerse> {
  final GeneratedDatabase _db;
  final String _alias;
  $MsgBibleVersesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  GeneratedIntColumn _bookId;
  @override
  GeneratedIntColumn get bookId => _bookId ??= _constructBookId();
  GeneratedIntColumn _constructBookId() {
    return GeneratedIntColumn(
      'book_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _chapterNumberMeta =
      const VerificationMeta('chapterNumber');
  GeneratedIntColumn _chapterNumber;
  @override
  GeneratedIntColumn get chapterNumber =>
      _chapterNumber ??= _constructChapterNumber();
  GeneratedIntColumn _constructChapterNumber() {
    return GeneratedIntColumn(
      'chapter_number',
      $tableName,
      true,
    );
  }

  final VerificationMeta _verseNumberMeta =
      const VerificationMeta('verseNumber');
  GeneratedIntColumn _verseNumber;
  @override
  GeneratedIntColumn get verseNumber =>
      _verseNumber ??= _constructVerseNumber();
  GeneratedIntColumn _constructVerseNumber() {
    return GeneratedIntColumn(
      'verse_number',
      $tableName,
      true,
    );
  }

  final VerificationMeta _verseTextMeta = const VerificationMeta('verseText');
  GeneratedTextColumn _verseText;
  @override
  GeneratedTextColumn get verseText => _verseText ??= _constructVerseText();
  GeneratedTextColumn _constructVerseText() {
    return GeneratedTextColumn(
      'verse_text',
      $tableName,
      true,
    );
  }

  final VerificationMeta _isHighlightedMeta =
      const VerificationMeta('isHighlighted');
  GeneratedBoolColumn _isHighlighted;
  @override
  GeneratedBoolColumn get isHighlighted =>
      _isHighlighted ??= _constructIsHighlighted();
  GeneratedBoolColumn _constructIsHighlighted() {
    return GeneratedBoolColumn('is_highlighted', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _highlightedColorMeta =
      const VerificationMeta('highlightedColor');
  GeneratedTextColumn _highlightedColor;
  @override
  GeneratedTextColumn get highlightedColor =>
      _highlightedColor ??= _constructHighlightedColor();
  GeneratedTextColumn _constructHighlightedColor() {
    return GeneratedTextColumn(
      'highlighted_color',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        bookId,
        chapterNumber,
        verseNumber,
        verseText,
        isHighlighted,
        highlightedColor
      ];
  @override
  $MsgBibleVersesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'msg_bible_verses';
  @override
  final String actualTableName = 'msg_bible_verses';
  @override
  VerificationContext validateIntegrity(Insertable<MsgBibleVerse> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id'], _bookIdMeta));
    }
    if (data.containsKey('chapter_number')) {
      context.handle(
          _chapterNumberMeta,
          chapterNumber.isAcceptableOrUnknown(
              data['chapter_number'], _chapterNumberMeta));
    }
    if (data.containsKey('verse_number')) {
      context.handle(
          _verseNumberMeta,
          verseNumber.isAcceptableOrUnknown(
              data['verse_number'], _verseNumberMeta));
    }
    if (data.containsKey('verse_text')) {
      context.handle(_verseTextMeta,
          verseText.isAcceptableOrUnknown(data['verse_text'], _verseTextMeta));
    }
    if (data.containsKey('is_highlighted')) {
      context.handle(
          _isHighlightedMeta,
          isHighlighted.isAcceptableOrUnknown(
              data['is_highlighted'], _isHighlightedMeta));
    }
    if (data.containsKey('highlighted_color')) {
      context.handle(
          _highlightedColorMeta,
          highlightedColor.isAcceptableOrUnknown(
              data['highlighted_color'], _highlightedColorMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MsgBibleVerse map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MsgBibleVerse.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $MsgBibleVersesTable createAlias(String alias) {
    return $MsgBibleVersesTable(_db, alias);
  }
}

class AmpBibleVerse extends DataClass implements Insertable<AmpBibleVerse> {
  final int id;
  final int bookId;
  final int chapterNumber;
  final int verseNumber;
  final String verseText;
  final bool isHighlighted;
  final String highlightedColor;
  AmpBibleVerse(
      {@required this.id,
      this.bookId,
      this.chapterNumber,
      this.verseNumber,
      this.verseText,
      @required this.isHighlighted,
      @required this.highlightedColor});
  factory AmpBibleVerse.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return AmpBibleVerse(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      bookId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}book_id']),
      chapterNumber: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}chapter_number']),
      verseNumber: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}verse_number']),
      verseText: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}verse_text']),
      isHighlighted: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_highlighted']),
      highlightedColor: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}highlighted_color']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || bookId != null) {
      map['book_id'] = Variable<int>(bookId);
    }
    if (!nullToAbsent || chapterNumber != null) {
      map['chapter_number'] = Variable<int>(chapterNumber);
    }
    if (!nullToAbsent || verseNumber != null) {
      map['verse_number'] = Variable<int>(verseNumber);
    }
    if (!nullToAbsent || verseText != null) {
      map['verse_text'] = Variable<String>(verseText);
    }
    if (!nullToAbsent || isHighlighted != null) {
      map['is_highlighted'] = Variable<bool>(isHighlighted);
    }
    if (!nullToAbsent || highlightedColor != null) {
      map['highlighted_color'] = Variable<String>(highlightedColor);
    }
    return map;
  }

  AmpBibleVersesCompanion toCompanion(bool nullToAbsent) {
    return AmpBibleVersesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      bookId:
          bookId == null && nullToAbsent ? const Value.absent() : Value(bookId),
      chapterNumber: chapterNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(chapterNumber),
      verseNumber: verseNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(verseNumber),
      verseText: verseText == null && nullToAbsent
          ? const Value.absent()
          : Value(verseText),
      isHighlighted: isHighlighted == null && nullToAbsent
          ? const Value.absent()
          : Value(isHighlighted),
      highlightedColor: highlightedColor == null && nullToAbsent
          ? const Value.absent()
          : Value(highlightedColor),
    );
  }

  factory AmpBibleVerse.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AmpBibleVerse(
      id: serializer.fromJson<int>(json['id']),
      bookId: serializer.fromJson<int>(json['bookId']),
      chapterNumber: serializer.fromJson<int>(json['chapterNumber']),
      verseNumber: serializer.fromJson<int>(json['verseNumber']),
      verseText: serializer.fromJson<String>(json['verseText']),
      isHighlighted: serializer.fromJson<bool>(json['isHighlighted']),
      highlightedColor: serializer.fromJson<String>(json['highlightedColor']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'bookId': serializer.toJson<int>(bookId),
      'chapterNumber': serializer.toJson<int>(chapterNumber),
      'verseNumber': serializer.toJson<int>(verseNumber),
      'verseText': serializer.toJson<String>(verseText),
      'isHighlighted': serializer.toJson<bool>(isHighlighted),
      'highlightedColor': serializer.toJson<String>(highlightedColor),
    };
  }

  AmpBibleVerse copyWith(
          {int id,
          int bookId,
          int chapterNumber,
          int verseNumber,
          String verseText,
          bool isHighlighted,
          String highlightedColor}) =>
      AmpBibleVerse(
        id: id ?? this.id,
        bookId: bookId ?? this.bookId,
        chapterNumber: chapterNumber ?? this.chapterNumber,
        verseNumber: verseNumber ?? this.verseNumber,
        verseText: verseText ?? this.verseText,
        isHighlighted: isHighlighted ?? this.isHighlighted,
        highlightedColor: highlightedColor ?? this.highlightedColor,
      );
  @override
  String toString() {
    return (StringBuffer('AmpBibleVerse(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('verseNumber: $verseNumber, ')
          ..write('verseText: $verseText, ')
          ..write('isHighlighted: $isHighlighted, ')
          ..write('highlightedColor: $highlightedColor')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          bookId.hashCode,
          $mrjc(
              chapterNumber.hashCode,
              $mrjc(
                  verseNumber.hashCode,
                  $mrjc(
                      verseText.hashCode,
                      $mrjc(isHighlighted.hashCode,
                          highlightedColor.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is AmpBibleVerse &&
          other.id == this.id &&
          other.bookId == this.bookId &&
          other.chapterNumber == this.chapterNumber &&
          other.verseNumber == this.verseNumber &&
          other.verseText == this.verseText &&
          other.isHighlighted == this.isHighlighted &&
          other.highlightedColor == this.highlightedColor);
}

class AmpBibleVersesCompanion extends UpdateCompanion<AmpBibleVerse> {
  final Value<int> id;
  final Value<int> bookId;
  final Value<int> chapterNumber;
  final Value<int> verseNumber;
  final Value<String> verseText;
  final Value<bool> isHighlighted;
  final Value<String> highlightedColor;
  const AmpBibleVersesCompanion({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.chapterNumber = const Value.absent(),
    this.verseNumber = const Value.absent(),
    this.verseText = const Value.absent(),
    this.isHighlighted = const Value.absent(),
    this.highlightedColor = const Value.absent(),
  });
  AmpBibleVersesCompanion.insert({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.chapterNumber = const Value.absent(),
    this.verseNumber = const Value.absent(),
    this.verseText = const Value.absent(),
    this.isHighlighted = const Value.absent(),
    @required String highlightedColor,
  }) : highlightedColor = Value(highlightedColor);
  static Insertable<AmpBibleVerse> custom({
    Expression<int> id,
    Expression<int> bookId,
    Expression<int> chapterNumber,
    Expression<int> verseNumber,
    Expression<String> verseText,
    Expression<bool> isHighlighted,
    Expression<String> highlightedColor,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bookId != null) 'book_id': bookId,
      if (chapterNumber != null) 'chapter_number': chapterNumber,
      if (verseNumber != null) 'verse_number': verseNumber,
      if (verseText != null) 'verse_text': verseText,
      if (isHighlighted != null) 'is_highlighted': isHighlighted,
      if (highlightedColor != null) 'highlighted_color': highlightedColor,
    });
  }

  AmpBibleVersesCompanion copyWith(
      {Value<int> id,
      Value<int> bookId,
      Value<int> chapterNumber,
      Value<int> verseNumber,
      Value<String> verseText,
      Value<bool> isHighlighted,
      Value<String> highlightedColor}) {
    return AmpBibleVersesCompanion(
      id: id ?? this.id,
      bookId: bookId ?? this.bookId,
      chapterNumber: chapterNumber ?? this.chapterNumber,
      verseNumber: verseNumber ?? this.verseNumber,
      verseText: verseText ?? this.verseText,
      isHighlighted: isHighlighted ?? this.isHighlighted,
      highlightedColor: highlightedColor ?? this.highlightedColor,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<int>(bookId.value);
    }
    if (chapterNumber.present) {
      map['chapter_number'] = Variable<int>(chapterNumber.value);
    }
    if (verseNumber.present) {
      map['verse_number'] = Variable<int>(verseNumber.value);
    }
    if (verseText.present) {
      map['verse_text'] = Variable<String>(verseText.value);
    }
    if (isHighlighted.present) {
      map['is_highlighted'] = Variable<bool>(isHighlighted.value);
    }
    if (highlightedColor.present) {
      map['highlighted_color'] = Variable<String>(highlightedColor.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AmpBibleVersesCompanion(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('verseNumber: $verseNumber, ')
          ..write('verseText: $verseText, ')
          ..write('isHighlighted: $isHighlighted, ')
          ..write('highlightedColor: $highlightedColor')
          ..write(')'))
        .toString();
  }
}

class $AmpBibleVersesTable extends AmpBibleVerses
    with TableInfo<$AmpBibleVersesTable, AmpBibleVerse> {
  final GeneratedDatabase _db;
  final String _alias;
  $AmpBibleVersesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  GeneratedIntColumn _bookId;
  @override
  GeneratedIntColumn get bookId => _bookId ??= _constructBookId();
  GeneratedIntColumn _constructBookId() {
    return GeneratedIntColumn(
      'book_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _chapterNumberMeta =
      const VerificationMeta('chapterNumber');
  GeneratedIntColumn _chapterNumber;
  @override
  GeneratedIntColumn get chapterNumber =>
      _chapterNumber ??= _constructChapterNumber();
  GeneratedIntColumn _constructChapterNumber() {
    return GeneratedIntColumn(
      'chapter_number',
      $tableName,
      true,
    );
  }

  final VerificationMeta _verseNumberMeta =
      const VerificationMeta('verseNumber');
  GeneratedIntColumn _verseNumber;
  @override
  GeneratedIntColumn get verseNumber =>
      _verseNumber ??= _constructVerseNumber();
  GeneratedIntColumn _constructVerseNumber() {
    return GeneratedIntColumn(
      'verse_number',
      $tableName,
      true,
    );
  }

  final VerificationMeta _verseTextMeta = const VerificationMeta('verseText');
  GeneratedTextColumn _verseText;
  @override
  GeneratedTextColumn get verseText => _verseText ??= _constructVerseText();
  GeneratedTextColumn _constructVerseText() {
    return GeneratedTextColumn(
      'verse_text',
      $tableName,
      true,
    );
  }

  final VerificationMeta _isHighlightedMeta =
      const VerificationMeta('isHighlighted');
  GeneratedBoolColumn _isHighlighted;
  @override
  GeneratedBoolColumn get isHighlighted =>
      _isHighlighted ??= _constructIsHighlighted();
  GeneratedBoolColumn _constructIsHighlighted() {
    return GeneratedBoolColumn('is_highlighted', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _highlightedColorMeta =
      const VerificationMeta('highlightedColor');
  GeneratedTextColumn _highlightedColor;
  @override
  GeneratedTextColumn get highlightedColor =>
      _highlightedColor ??= _constructHighlightedColor();
  GeneratedTextColumn _constructHighlightedColor() {
    return GeneratedTextColumn(
      'highlighted_color',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        bookId,
        chapterNumber,
        verseNumber,
        verseText,
        isHighlighted,
        highlightedColor
      ];
  @override
  $AmpBibleVersesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'amp_bible_verses';
  @override
  final String actualTableName = 'amp_bible_verses';
  @override
  VerificationContext validateIntegrity(Insertable<AmpBibleVerse> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id'], _bookIdMeta));
    }
    if (data.containsKey('chapter_number')) {
      context.handle(
          _chapterNumberMeta,
          chapterNumber.isAcceptableOrUnknown(
              data['chapter_number'], _chapterNumberMeta));
    }
    if (data.containsKey('verse_number')) {
      context.handle(
          _verseNumberMeta,
          verseNumber.isAcceptableOrUnknown(
              data['verse_number'], _verseNumberMeta));
    }
    if (data.containsKey('verse_text')) {
      context.handle(_verseTextMeta,
          verseText.isAcceptableOrUnknown(data['verse_text'], _verseTextMeta));
    }
    if (data.containsKey('is_highlighted')) {
      context.handle(
          _isHighlightedMeta,
          isHighlighted.isAcceptableOrUnknown(
              data['is_highlighted'], _isHighlightedMeta));
    }
    if (data.containsKey('highlighted_color')) {
      context.handle(
          _highlightedColorMeta,
          highlightedColor.isAcceptableOrUnknown(
              data['highlighted_color'], _highlightedColorMeta));
    } else if (isInserting) {
      context.missing(_highlightedColorMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AmpBibleVerse map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return AmpBibleVerse.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $AmpBibleVersesTable createAlias(String alias) {
    return $AmpBibleVersesTable(_db, alias);
  }
}

class KjvBibleVerse extends DataClass implements Insertable<KjvBibleVerse> {
  final int id;
  final int bookId;
  final int chapterNumber;
  final int verseNumber;
  final String verseText;
  final bool isHighlighted;
  final String highlightedColor;
  KjvBibleVerse(
      {@required this.id,
      this.bookId,
      this.chapterNumber,
      this.verseNumber,
      this.verseText,
      @required this.isHighlighted,
      @required this.highlightedColor});
  factory KjvBibleVerse.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return KjvBibleVerse(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      bookId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}book_id']),
      chapterNumber: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}chapter_number']),
      verseNumber: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}verse_number']),
      verseText: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}verse_text']),
      isHighlighted: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_highlighted']),
      highlightedColor: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}highlighted_color']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || bookId != null) {
      map['book_id'] = Variable<int>(bookId);
    }
    if (!nullToAbsent || chapterNumber != null) {
      map['chapter_number'] = Variable<int>(chapterNumber);
    }
    if (!nullToAbsent || verseNumber != null) {
      map['verse_number'] = Variable<int>(verseNumber);
    }
    if (!nullToAbsent || verseText != null) {
      map['verse_text'] = Variable<String>(verseText);
    }
    if (!nullToAbsent || isHighlighted != null) {
      map['is_highlighted'] = Variable<bool>(isHighlighted);
    }
    if (!nullToAbsent || highlightedColor != null) {
      map['highlighted_color'] = Variable<String>(highlightedColor);
    }
    return map;
  }

  KjvBibleVersesCompanion toCompanion(bool nullToAbsent) {
    return KjvBibleVersesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      bookId:
          bookId == null && nullToAbsent ? const Value.absent() : Value(bookId),
      chapterNumber: chapterNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(chapterNumber),
      verseNumber: verseNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(verseNumber),
      verseText: verseText == null && nullToAbsent
          ? const Value.absent()
          : Value(verseText),
      isHighlighted: isHighlighted == null && nullToAbsent
          ? const Value.absent()
          : Value(isHighlighted),
      highlightedColor: highlightedColor == null && nullToAbsent
          ? const Value.absent()
          : Value(highlightedColor),
    );
  }

  factory KjvBibleVerse.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return KjvBibleVerse(
      id: serializer.fromJson<int>(json['id']),
      bookId: serializer.fromJson<int>(json['bookId']),
      chapterNumber: serializer.fromJson<int>(json['chapterNumber']),
      verseNumber: serializer.fromJson<int>(json['verseNumber']),
      verseText: serializer.fromJson<String>(json['verseText']),
      isHighlighted: serializer.fromJson<bool>(json['isHighlighted']),
      highlightedColor: serializer.fromJson<String>(json['highlightedColor']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'bookId': serializer.toJson<int>(bookId),
      'chapterNumber': serializer.toJson<int>(chapterNumber),
      'verseNumber': serializer.toJson<int>(verseNumber),
      'verseText': serializer.toJson<String>(verseText),
      'isHighlighted': serializer.toJson<bool>(isHighlighted),
      'highlightedColor': serializer.toJson<String>(highlightedColor),
    };
  }

  KjvBibleVerse copyWith(
          {int id,
          int bookId,
          int chapterNumber,
          int verseNumber,
          String verseText,
          bool isHighlighted,
          String highlightedColor}) =>
      KjvBibleVerse(
        id: id ?? this.id,
        bookId: bookId ?? this.bookId,
        chapterNumber: chapterNumber ?? this.chapterNumber,
        verseNumber: verseNumber ?? this.verseNumber,
        verseText: verseText ?? this.verseText,
        isHighlighted: isHighlighted ?? this.isHighlighted,
        highlightedColor: highlightedColor ?? this.highlightedColor,
      );
  @override
  String toString() {
    return (StringBuffer('KjvBibleVerse(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('verseNumber: $verseNumber, ')
          ..write('verseText: $verseText, ')
          ..write('isHighlighted: $isHighlighted, ')
          ..write('highlightedColor: $highlightedColor')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          bookId.hashCode,
          $mrjc(
              chapterNumber.hashCode,
              $mrjc(
                  verseNumber.hashCode,
                  $mrjc(
                      verseText.hashCode,
                      $mrjc(isHighlighted.hashCode,
                          highlightedColor.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is KjvBibleVerse &&
          other.id == this.id &&
          other.bookId == this.bookId &&
          other.chapterNumber == this.chapterNumber &&
          other.verseNumber == this.verseNumber &&
          other.verseText == this.verseText &&
          other.isHighlighted == this.isHighlighted &&
          other.highlightedColor == this.highlightedColor);
}

class KjvBibleVersesCompanion extends UpdateCompanion<KjvBibleVerse> {
  final Value<int> id;
  final Value<int> bookId;
  final Value<int> chapterNumber;
  final Value<int> verseNumber;
  final Value<String> verseText;
  final Value<bool> isHighlighted;
  final Value<String> highlightedColor;
  const KjvBibleVersesCompanion({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.chapterNumber = const Value.absent(),
    this.verseNumber = const Value.absent(),
    this.verseText = const Value.absent(),
    this.isHighlighted = const Value.absent(),
    this.highlightedColor = const Value.absent(),
  });
  KjvBibleVersesCompanion.insert({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.chapterNumber = const Value.absent(),
    this.verseNumber = const Value.absent(),
    this.verseText = const Value.absent(),
    this.isHighlighted = const Value.absent(),
    @required String highlightedColor,
  }) : highlightedColor = Value(highlightedColor);
  static Insertable<KjvBibleVerse> custom({
    Expression<int> id,
    Expression<int> bookId,
    Expression<int> chapterNumber,
    Expression<int> verseNumber,
    Expression<String> verseText,
    Expression<bool> isHighlighted,
    Expression<String> highlightedColor,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bookId != null) 'book_id': bookId,
      if (chapterNumber != null) 'chapter_number': chapterNumber,
      if (verseNumber != null) 'verse_number': verseNumber,
      if (verseText != null) 'verse_text': verseText,
      if (isHighlighted != null) 'is_highlighted': isHighlighted,
      if (highlightedColor != null) 'highlighted_color': highlightedColor,
    });
  }

  KjvBibleVersesCompanion copyWith(
      {Value<int> id,
      Value<int> bookId,
      Value<int> chapterNumber,
      Value<int> verseNumber,
      Value<String> verseText,
      Value<bool> isHighlighted,
      Value<String> highlightedColor}) {
    return KjvBibleVersesCompanion(
      id: id ?? this.id,
      bookId: bookId ?? this.bookId,
      chapterNumber: chapterNumber ?? this.chapterNumber,
      verseNumber: verseNumber ?? this.verseNumber,
      verseText: verseText ?? this.verseText,
      isHighlighted: isHighlighted ?? this.isHighlighted,
      highlightedColor: highlightedColor ?? this.highlightedColor,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<int>(bookId.value);
    }
    if (chapterNumber.present) {
      map['chapter_number'] = Variable<int>(chapterNumber.value);
    }
    if (verseNumber.present) {
      map['verse_number'] = Variable<int>(verseNumber.value);
    }
    if (verseText.present) {
      map['verse_text'] = Variable<String>(verseText.value);
    }
    if (isHighlighted.present) {
      map['is_highlighted'] = Variable<bool>(isHighlighted.value);
    }
    if (highlightedColor.present) {
      map['highlighted_color'] = Variable<String>(highlightedColor.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('KjvBibleVersesCompanion(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('verseNumber: $verseNumber, ')
          ..write('verseText: $verseText, ')
          ..write('isHighlighted: $isHighlighted, ')
          ..write('highlightedColor: $highlightedColor')
          ..write(')'))
        .toString();
  }
}

class $KjvBibleVersesTable extends KjvBibleVerses
    with TableInfo<$KjvBibleVersesTable, KjvBibleVerse> {
  final GeneratedDatabase _db;
  final String _alias;
  $KjvBibleVersesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  GeneratedIntColumn _bookId;
  @override
  GeneratedIntColumn get bookId => _bookId ??= _constructBookId();
  GeneratedIntColumn _constructBookId() {
    return GeneratedIntColumn(
      'book_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _chapterNumberMeta =
      const VerificationMeta('chapterNumber');
  GeneratedIntColumn _chapterNumber;
  @override
  GeneratedIntColumn get chapterNumber =>
      _chapterNumber ??= _constructChapterNumber();
  GeneratedIntColumn _constructChapterNumber() {
    return GeneratedIntColumn(
      'chapter_number',
      $tableName,
      true,
    );
  }

  final VerificationMeta _verseNumberMeta =
      const VerificationMeta('verseNumber');
  GeneratedIntColumn _verseNumber;
  @override
  GeneratedIntColumn get verseNumber =>
      _verseNumber ??= _constructVerseNumber();
  GeneratedIntColumn _constructVerseNumber() {
    return GeneratedIntColumn(
      'verse_number',
      $tableName,
      true,
    );
  }

  final VerificationMeta _verseTextMeta = const VerificationMeta('verseText');
  GeneratedTextColumn _verseText;
  @override
  GeneratedTextColumn get verseText => _verseText ??= _constructVerseText();
  GeneratedTextColumn _constructVerseText() {
    return GeneratedTextColumn(
      'verse_text',
      $tableName,
      true,
    );
  }

  final VerificationMeta _isHighlightedMeta =
      const VerificationMeta('isHighlighted');
  GeneratedBoolColumn _isHighlighted;
  @override
  GeneratedBoolColumn get isHighlighted =>
      _isHighlighted ??= _constructIsHighlighted();
  GeneratedBoolColumn _constructIsHighlighted() {
    return GeneratedBoolColumn('is_highlighted', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _highlightedColorMeta =
      const VerificationMeta('highlightedColor');
  GeneratedTextColumn _highlightedColor;
  @override
  GeneratedTextColumn get highlightedColor =>
      _highlightedColor ??= _constructHighlightedColor();
  GeneratedTextColumn _constructHighlightedColor() {
    return GeneratedTextColumn(
      'highlighted_color',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        bookId,
        chapterNumber,
        verseNumber,
        verseText,
        isHighlighted,
        highlightedColor
      ];
  @override
  $KjvBibleVersesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'kjv_bible_verses';
  @override
  final String actualTableName = 'kjv_bible_verses';
  @override
  VerificationContext validateIntegrity(Insertable<KjvBibleVerse> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id'], _bookIdMeta));
    }
    if (data.containsKey('chapter_number')) {
      context.handle(
          _chapterNumberMeta,
          chapterNumber.isAcceptableOrUnknown(
              data['chapter_number'], _chapterNumberMeta));
    }
    if (data.containsKey('verse_number')) {
      context.handle(
          _verseNumberMeta,
          verseNumber.isAcceptableOrUnknown(
              data['verse_number'], _verseNumberMeta));
    }
    if (data.containsKey('verse_text')) {
      context.handle(_verseTextMeta,
          verseText.isAcceptableOrUnknown(data['verse_text'], _verseTextMeta));
    }
    if (data.containsKey('is_highlighted')) {
      context.handle(
          _isHighlightedMeta,
          isHighlighted.isAcceptableOrUnknown(
              data['is_highlighted'], _isHighlightedMeta));
    }
    if (data.containsKey('highlighted_color')) {
      context.handle(
          _highlightedColorMeta,
          highlightedColor.isAcceptableOrUnknown(
              data['highlighted_color'], _highlightedColorMeta));
    } else if (isInserting) {
      context.missing(_highlightedColorMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  KjvBibleVerse map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return KjvBibleVerse.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $KjvBibleVersesTable createAlias(String alias) {
    return $KjvBibleVersesTable(_db, alias);
  }
}

class NkjvBibleVerse extends DataClass implements Insertable<NkjvBibleVerse> {
  final int id;
  final int bookId;
  final int chapterNumber;
  final int verseNumber;
  final String verseText;
  final bool isHighlighted;
  final String highlightedColor;
  NkjvBibleVerse(
      {@required this.id,
      this.bookId,
      this.chapterNumber,
      this.verseNumber,
      this.verseText,
      @required this.isHighlighted,
      @required this.highlightedColor});
  factory NkjvBibleVerse.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return NkjvBibleVerse(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      bookId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}book_id']),
      chapterNumber: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}chapter_number']),
      verseNumber: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}verse_number']),
      verseText: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}verse_text']),
      isHighlighted: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_highlighted']),
      highlightedColor: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}highlighted_color']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || bookId != null) {
      map['book_id'] = Variable<int>(bookId);
    }
    if (!nullToAbsent || chapterNumber != null) {
      map['chapter_number'] = Variable<int>(chapterNumber);
    }
    if (!nullToAbsent || verseNumber != null) {
      map['verse_number'] = Variable<int>(verseNumber);
    }
    if (!nullToAbsent || verseText != null) {
      map['verse_text'] = Variable<String>(verseText);
    }
    if (!nullToAbsent || isHighlighted != null) {
      map['is_highlighted'] = Variable<bool>(isHighlighted);
    }
    if (!nullToAbsent || highlightedColor != null) {
      map['highlighted_color'] = Variable<String>(highlightedColor);
    }
    return map;
  }

  NkjvBibleVersesCompanion toCompanion(bool nullToAbsent) {
    return NkjvBibleVersesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      bookId:
          bookId == null && nullToAbsent ? const Value.absent() : Value(bookId),
      chapterNumber: chapterNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(chapterNumber),
      verseNumber: verseNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(verseNumber),
      verseText: verseText == null && nullToAbsent
          ? const Value.absent()
          : Value(verseText),
      isHighlighted: isHighlighted == null && nullToAbsent
          ? const Value.absent()
          : Value(isHighlighted),
      highlightedColor: highlightedColor == null && nullToAbsent
          ? const Value.absent()
          : Value(highlightedColor),
    );
  }

  factory NkjvBibleVerse.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return NkjvBibleVerse(
      id: serializer.fromJson<int>(json['id']),
      bookId: serializer.fromJson<int>(json['bookId']),
      chapterNumber: serializer.fromJson<int>(json['chapterNumber']),
      verseNumber: serializer.fromJson<int>(json['verseNumber']),
      verseText: serializer.fromJson<String>(json['verseText']),
      isHighlighted: serializer.fromJson<bool>(json['isHighlighted']),
      highlightedColor: serializer.fromJson<String>(json['highlightedColor']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'bookId': serializer.toJson<int>(bookId),
      'chapterNumber': serializer.toJson<int>(chapterNumber),
      'verseNumber': serializer.toJson<int>(verseNumber),
      'verseText': serializer.toJson<String>(verseText),
      'isHighlighted': serializer.toJson<bool>(isHighlighted),
      'highlightedColor': serializer.toJson<String>(highlightedColor),
    };
  }

  NkjvBibleVerse copyWith(
          {int id,
          int bookId,
          int chapterNumber,
          int verseNumber,
          String verseText,
          bool isHighlighted,
          String highlightedColor}) =>
      NkjvBibleVerse(
        id: id ?? this.id,
        bookId: bookId ?? this.bookId,
        chapterNumber: chapterNumber ?? this.chapterNumber,
        verseNumber: verseNumber ?? this.verseNumber,
        verseText: verseText ?? this.verseText,
        isHighlighted: isHighlighted ?? this.isHighlighted,
        highlightedColor: highlightedColor ?? this.highlightedColor,
      );
  @override
  String toString() {
    return (StringBuffer('NkjvBibleVerse(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('verseNumber: $verseNumber, ')
          ..write('verseText: $verseText, ')
          ..write('isHighlighted: $isHighlighted, ')
          ..write('highlightedColor: $highlightedColor')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          bookId.hashCode,
          $mrjc(
              chapterNumber.hashCode,
              $mrjc(
                  verseNumber.hashCode,
                  $mrjc(
                      verseText.hashCode,
                      $mrjc(isHighlighted.hashCode,
                          highlightedColor.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is NkjvBibleVerse &&
          other.id == this.id &&
          other.bookId == this.bookId &&
          other.chapterNumber == this.chapterNumber &&
          other.verseNumber == this.verseNumber &&
          other.verseText == this.verseText &&
          other.isHighlighted == this.isHighlighted &&
          other.highlightedColor == this.highlightedColor);
}

class NkjvBibleVersesCompanion extends UpdateCompanion<NkjvBibleVerse> {
  final Value<int> id;
  final Value<int> bookId;
  final Value<int> chapterNumber;
  final Value<int> verseNumber;
  final Value<String> verseText;
  final Value<bool> isHighlighted;
  final Value<String> highlightedColor;
  const NkjvBibleVersesCompanion({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.chapterNumber = const Value.absent(),
    this.verseNumber = const Value.absent(),
    this.verseText = const Value.absent(),
    this.isHighlighted = const Value.absent(),
    this.highlightedColor = const Value.absent(),
  });
  NkjvBibleVersesCompanion.insert({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.chapterNumber = const Value.absent(),
    this.verseNumber = const Value.absent(),
    this.verseText = const Value.absent(),
    this.isHighlighted = const Value.absent(),
    @required String highlightedColor,
  }) : highlightedColor = Value(highlightedColor);
  static Insertable<NkjvBibleVerse> custom({
    Expression<int> id,
    Expression<int> bookId,
    Expression<int> chapterNumber,
    Expression<int> verseNumber,
    Expression<String> verseText,
    Expression<bool> isHighlighted,
    Expression<String> highlightedColor,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bookId != null) 'book_id': bookId,
      if (chapterNumber != null) 'chapter_number': chapterNumber,
      if (verseNumber != null) 'verse_number': verseNumber,
      if (verseText != null) 'verse_text': verseText,
      if (isHighlighted != null) 'is_highlighted': isHighlighted,
      if (highlightedColor != null) 'highlighted_color': highlightedColor,
    });
  }

  NkjvBibleVersesCompanion copyWith(
      {Value<int> id,
      Value<int> bookId,
      Value<int> chapterNumber,
      Value<int> verseNumber,
      Value<String> verseText,
      Value<bool> isHighlighted,
      Value<String> highlightedColor}) {
    return NkjvBibleVersesCompanion(
      id: id ?? this.id,
      bookId: bookId ?? this.bookId,
      chapterNumber: chapterNumber ?? this.chapterNumber,
      verseNumber: verseNumber ?? this.verseNumber,
      verseText: verseText ?? this.verseText,
      isHighlighted: isHighlighted ?? this.isHighlighted,
      highlightedColor: highlightedColor ?? this.highlightedColor,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<int>(bookId.value);
    }
    if (chapterNumber.present) {
      map['chapter_number'] = Variable<int>(chapterNumber.value);
    }
    if (verseNumber.present) {
      map['verse_number'] = Variable<int>(verseNumber.value);
    }
    if (verseText.present) {
      map['verse_text'] = Variable<String>(verseText.value);
    }
    if (isHighlighted.present) {
      map['is_highlighted'] = Variable<bool>(isHighlighted.value);
    }
    if (highlightedColor.present) {
      map['highlighted_color'] = Variable<String>(highlightedColor.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NkjvBibleVersesCompanion(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('verseNumber: $verseNumber, ')
          ..write('verseText: $verseText, ')
          ..write('isHighlighted: $isHighlighted, ')
          ..write('highlightedColor: $highlightedColor')
          ..write(')'))
        .toString();
  }
}

class $NkjvBibleVersesTable extends NkjvBibleVerses
    with TableInfo<$NkjvBibleVersesTable, NkjvBibleVerse> {
  final GeneratedDatabase _db;
  final String _alias;
  $NkjvBibleVersesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  GeneratedIntColumn _bookId;
  @override
  GeneratedIntColumn get bookId => _bookId ??= _constructBookId();
  GeneratedIntColumn _constructBookId() {
    return GeneratedIntColumn(
      'book_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _chapterNumberMeta =
      const VerificationMeta('chapterNumber');
  GeneratedIntColumn _chapterNumber;
  @override
  GeneratedIntColumn get chapterNumber =>
      _chapterNumber ??= _constructChapterNumber();
  GeneratedIntColumn _constructChapterNumber() {
    return GeneratedIntColumn(
      'chapter_number',
      $tableName,
      true,
    );
  }

  final VerificationMeta _verseNumberMeta =
      const VerificationMeta('verseNumber');
  GeneratedIntColumn _verseNumber;
  @override
  GeneratedIntColumn get verseNumber =>
      _verseNumber ??= _constructVerseNumber();
  GeneratedIntColumn _constructVerseNumber() {
    return GeneratedIntColumn(
      'verse_number',
      $tableName,
      true,
    );
  }

  final VerificationMeta _verseTextMeta = const VerificationMeta('verseText');
  GeneratedTextColumn _verseText;
  @override
  GeneratedTextColumn get verseText => _verseText ??= _constructVerseText();
  GeneratedTextColumn _constructVerseText() {
    return GeneratedTextColumn(
      'verse_text',
      $tableName,
      true,
    );
  }

  final VerificationMeta _isHighlightedMeta =
      const VerificationMeta('isHighlighted');
  GeneratedBoolColumn _isHighlighted;
  @override
  GeneratedBoolColumn get isHighlighted =>
      _isHighlighted ??= _constructIsHighlighted();
  GeneratedBoolColumn _constructIsHighlighted() {
    return GeneratedBoolColumn('is_highlighted', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _highlightedColorMeta =
      const VerificationMeta('highlightedColor');
  GeneratedTextColumn _highlightedColor;
  @override
  GeneratedTextColumn get highlightedColor =>
      _highlightedColor ??= _constructHighlightedColor();
  GeneratedTextColumn _constructHighlightedColor() {
    return GeneratedTextColumn(
      'highlighted_color',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        bookId,
        chapterNumber,
        verseNumber,
        verseText,
        isHighlighted,
        highlightedColor
      ];
  @override
  $NkjvBibleVersesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'nkjv_bible_verses';
  @override
  final String actualTableName = 'nkjv_bible_verses';
  @override
  VerificationContext validateIntegrity(Insertable<NkjvBibleVerse> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id'], _bookIdMeta));
    }
    if (data.containsKey('chapter_number')) {
      context.handle(
          _chapterNumberMeta,
          chapterNumber.isAcceptableOrUnknown(
              data['chapter_number'], _chapterNumberMeta));
    }
    if (data.containsKey('verse_number')) {
      context.handle(
          _verseNumberMeta,
          verseNumber.isAcceptableOrUnknown(
              data['verse_number'], _verseNumberMeta));
    }
    if (data.containsKey('verse_text')) {
      context.handle(_verseTextMeta,
          verseText.isAcceptableOrUnknown(data['verse_text'], _verseTextMeta));
    }
    if (data.containsKey('is_highlighted')) {
      context.handle(
          _isHighlightedMeta,
          isHighlighted.isAcceptableOrUnknown(
              data['is_highlighted'], _isHighlightedMeta));
    }
    if (data.containsKey('highlighted_color')) {
      context.handle(
          _highlightedColorMeta,
          highlightedColor.isAcceptableOrUnknown(
              data['highlighted_color'], _highlightedColorMeta));
    } else if (isInserting) {
      context.missing(_highlightedColorMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  NkjvBibleVerse map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return NkjvBibleVerse.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $NkjvBibleVersesTable createAlias(String alias) {
    return $NkjvBibleVersesTable(_db, alias);
  }
}

class NivBibleVerse extends DataClass implements Insertable<NivBibleVerse> {
  final int id;
  final int bookId;
  final int chapterNumber;
  final int verseNumber;
  final String verseText;
  final bool isHighlighted;
  final String highlightedColor;
  NivBibleVerse(
      {@required this.id,
      this.bookId,
      this.chapterNumber,
      this.verseNumber,
      this.verseText,
      @required this.isHighlighted,
      @required this.highlightedColor});
  factory NivBibleVerse.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return NivBibleVerse(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      bookId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}book_id']),
      chapterNumber: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}chapter_number']),
      verseNumber: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}verse_number']),
      verseText: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}verse_text']),
      isHighlighted: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_highlighted']),
      highlightedColor: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}highlighted_color']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || bookId != null) {
      map['book_id'] = Variable<int>(bookId);
    }
    if (!nullToAbsent || chapterNumber != null) {
      map['chapter_number'] = Variable<int>(chapterNumber);
    }
    if (!nullToAbsent || verseNumber != null) {
      map['verse_number'] = Variable<int>(verseNumber);
    }
    if (!nullToAbsent || verseText != null) {
      map['verse_text'] = Variable<String>(verseText);
    }
    if (!nullToAbsent || isHighlighted != null) {
      map['is_highlighted'] = Variable<bool>(isHighlighted);
    }
    if (!nullToAbsent || highlightedColor != null) {
      map['highlighted_color'] = Variable<String>(highlightedColor);
    }
    return map;
  }

  NivBibleVersesCompanion toCompanion(bool nullToAbsent) {
    return NivBibleVersesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      bookId:
          bookId == null && nullToAbsent ? const Value.absent() : Value(bookId),
      chapterNumber: chapterNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(chapterNumber),
      verseNumber: verseNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(verseNumber),
      verseText: verseText == null && nullToAbsent
          ? const Value.absent()
          : Value(verseText),
      isHighlighted: isHighlighted == null && nullToAbsent
          ? const Value.absent()
          : Value(isHighlighted),
      highlightedColor: highlightedColor == null && nullToAbsent
          ? const Value.absent()
          : Value(highlightedColor),
    );
  }

  factory NivBibleVerse.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return NivBibleVerse(
      id: serializer.fromJson<int>(json['id']),
      bookId: serializer.fromJson<int>(json['bookId']),
      chapterNumber: serializer.fromJson<int>(json['chapterNumber']),
      verseNumber: serializer.fromJson<int>(json['verseNumber']),
      verseText: serializer.fromJson<String>(json['verseText']),
      isHighlighted: serializer.fromJson<bool>(json['isHighlighted']),
      highlightedColor: serializer.fromJson<String>(json['highlightedColor']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'bookId': serializer.toJson<int>(bookId),
      'chapterNumber': serializer.toJson<int>(chapterNumber),
      'verseNumber': serializer.toJson<int>(verseNumber),
      'verseText': serializer.toJson<String>(verseText),
      'isHighlighted': serializer.toJson<bool>(isHighlighted),
      'highlightedColor': serializer.toJson<String>(highlightedColor),
    };
  }

  NivBibleVerse copyWith(
          {int id,
          int bookId,
          int chapterNumber,
          int verseNumber,
          String verseText,
          bool isHighlighted,
          String highlightedColor}) =>
      NivBibleVerse(
        id: id ?? this.id,
        bookId: bookId ?? this.bookId,
        chapterNumber: chapterNumber ?? this.chapterNumber,
        verseNumber: verseNumber ?? this.verseNumber,
        verseText: verseText ?? this.verseText,
        isHighlighted: isHighlighted ?? this.isHighlighted,
        highlightedColor: highlightedColor ?? this.highlightedColor,
      );
  @override
  String toString() {
    return (StringBuffer('NivBibleVerse(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('verseNumber: $verseNumber, ')
          ..write('verseText: $verseText, ')
          ..write('isHighlighted: $isHighlighted, ')
          ..write('highlightedColor: $highlightedColor')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          bookId.hashCode,
          $mrjc(
              chapterNumber.hashCode,
              $mrjc(
                  verseNumber.hashCode,
                  $mrjc(
                      verseText.hashCode,
                      $mrjc(isHighlighted.hashCode,
                          highlightedColor.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is NivBibleVerse &&
          other.id == this.id &&
          other.bookId == this.bookId &&
          other.chapterNumber == this.chapterNumber &&
          other.verseNumber == this.verseNumber &&
          other.verseText == this.verseText &&
          other.isHighlighted == this.isHighlighted &&
          other.highlightedColor == this.highlightedColor);
}

class NivBibleVersesCompanion extends UpdateCompanion<NivBibleVerse> {
  final Value<int> id;
  final Value<int> bookId;
  final Value<int> chapterNumber;
  final Value<int> verseNumber;
  final Value<String> verseText;
  final Value<bool> isHighlighted;
  final Value<String> highlightedColor;
  const NivBibleVersesCompanion({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.chapterNumber = const Value.absent(),
    this.verseNumber = const Value.absent(),
    this.verseText = const Value.absent(),
    this.isHighlighted = const Value.absent(),
    this.highlightedColor = const Value.absent(),
  });
  NivBibleVersesCompanion.insert({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.chapterNumber = const Value.absent(),
    this.verseNumber = const Value.absent(),
    this.verseText = const Value.absent(),
    this.isHighlighted = const Value.absent(),
    @required String highlightedColor,
  }) : highlightedColor = Value(highlightedColor);
  static Insertable<NivBibleVerse> custom({
    Expression<int> id,
    Expression<int> bookId,
    Expression<int> chapterNumber,
    Expression<int> verseNumber,
    Expression<String> verseText,
    Expression<bool> isHighlighted,
    Expression<String> highlightedColor,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bookId != null) 'book_id': bookId,
      if (chapterNumber != null) 'chapter_number': chapterNumber,
      if (verseNumber != null) 'verse_number': verseNumber,
      if (verseText != null) 'verse_text': verseText,
      if (isHighlighted != null) 'is_highlighted': isHighlighted,
      if (highlightedColor != null) 'highlighted_color': highlightedColor,
    });
  }

  NivBibleVersesCompanion copyWith(
      {Value<int> id,
      Value<int> bookId,
      Value<int> chapterNumber,
      Value<int> verseNumber,
      Value<String> verseText,
      Value<bool> isHighlighted,
      Value<String> highlightedColor}) {
    return NivBibleVersesCompanion(
      id: id ?? this.id,
      bookId: bookId ?? this.bookId,
      chapterNumber: chapterNumber ?? this.chapterNumber,
      verseNumber: verseNumber ?? this.verseNumber,
      verseText: verseText ?? this.verseText,
      isHighlighted: isHighlighted ?? this.isHighlighted,
      highlightedColor: highlightedColor ?? this.highlightedColor,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<int>(bookId.value);
    }
    if (chapterNumber.present) {
      map['chapter_number'] = Variable<int>(chapterNumber.value);
    }
    if (verseNumber.present) {
      map['verse_number'] = Variable<int>(verseNumber.value);
    }
    if (verseText.present) {
      map['verse_text'] = Variable<String>(verseText.value);
    }
    if (isHighlighted.present) {
      map['is_highlighted'] = Variable<bool>(isHighlighted.value);
    }
    if (highlightedColor.present) {
      map['highlighted_color'] = Variable<String>(highlightedColor.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NivBibleVersesCompanion(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('verseNumber: $verseNumber, ')
          ..write('verseText: $verseText, ')
          ..write('isHighlighted: $isHighlighted, ')
          ..write('highlightedColor: $highlightedColor')
          ..write(')'))
        .toString();
  }
}

class $NivBibleVersesTable extends NivBibleVerses
    with TableInfo<$NivBibleVersesTable, NivBibleVerse> {
  final GeneratedDatabase _db;
  final String _alias;
  $NivBibleVersesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  GeneratedIntColumn _bookId;
  @override
  GeneratedIntColumn get bookId => _bookId ??= _constructBookId();
  GeneratedIntColumn _constructBookId() {
    return GeneratedIntColumn(
      'book_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _chapterNumberMeta =
      const VerificationMeta('chapterNumber');
  GeneratedIntColumn _chapterNumber;
  @override
  GeneratedIntColumn get chapterNumber =>
      _chapterNumber ??= _constructChapterNumber();
  GeneratedIntColumn _constructChapterNumber() {
    return GeneratedIntColumn(
      'chapter_number',
      $tableName,
      true,
    );
  }

  final VerificationMeta _verseNumberMeta =
      const VerificationMeta('verseNumber');
  GeneratedIntColumn _verseNumber;
  @override
  GeneratedIntColumn get verseNumber =>
      _verseNumber ??= _constructVerseNumber();
  GeneratedIntColumn _constructVerseNumber() {
    return GeneratedIntColumn(
      'verse_number',
      $tableName,
      true,
    );
  }

  final VerificationMeta _verseTextMeta = const VerificationMeta('verseText');
  GeneratedTextColumn _verseText;
  @override
  GeneratedTextColumn get verseText => _verseText ??= _constructVerseText();
  GeneratedTextColumn _constructVerseText() {
    return GeneratedTextColumn(
      'verse_text',
      $tableName,
      true,
    );
  }

  final VerificationMeta _isHighlightedMeta =
      const VerificationMeta('isHighlighted');
  GeneratedBoolColumn _isHighlighted;
  @override
  GeneratedBoolColumn get isHighlighted =>
      _isHighlighted ??= _constructIsHighlighted();
  GeneratedBoolColumn _constructIsHighlighted() {
    return GeneratedBoolColumn('is_highlighted', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _highlightedColorMeta =
      const VerificationMeta('highlightedColor');
  GeneratedTextColumn _highlightedColor;
  @override
  GeneratedTextColumn get highlightedColor =>
      _highlightedColor ??= _constructHighlightedColor();
  GeneratedTextColumn _constructHighlightedColor() {
    return GeneratedTextColumn(
      'highlighted_color',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        bookId,
        chapterNumber,
        verseNumber,
        verseText,
        isHighlighted,
        highlightedColor
      ];
  @override
  $NivBibleVersesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'niv_bible_verses';
  @override
  final String actualTableName = 'niv_bible_verses';
  @override
  VerificationContext validateIntegrity(Insertable<NivBibleVerse> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id'], _bookIdMeta));
    }
    if (data.containsKey('chapter_number')) {
      context.handle(
          _chapterNumberMeta,
          chapterNumber.isAcceptableOrUnknown(
              data['chapter_number'], _chapterNumberMeta));
    }
    if (data.containsKey('verse_number')) {
      context.handle(
          _verseNumberMeta,
          verseNumber.isAcceptableOrUnknown(
              data['verse_number'], _verseNumberMeta));
    }
    if (data.containsKey('verse_text')) {
      context.handle(_verseTextMeta,
          verseText.isAcceptableOrUnknown(data['verse_text'], _verseTextMeta));
    }
    if (data.containsKey('is_highlighted')) {
      context.handle(
          _isHighlightedMeta,
          isHighlighted.isAcceptableOrUnknown(
              data['is_highlighted'], _isHighlightedMeta));
    }
    if (data.containsKey('highlighted_color')) {
      context.handle(
          _highlightedColorMeta,
          highlightedColor.isAcceptableOrUnknown(
              data['highlighted_color'], _highlightedColorMeta));
    } else if (isInserting) {
      context.missing(_highlightedColorMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  NivBibleVerse map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return NivBibleVerse.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $NivBibleVersesTable createAlias(String alias) {
    return $NivBibleVersesTable(_db, alias);
  }
}

class BibleBook extends DataClass implements Insertable<BibleBook> {
  final int bookId;
  final String bookName;
  final int numberOfChapters;
  final String abbreviation;
  BibleBook(
      {this.bookId,
      @required this.bookName,
      @required this.numberOfChapters,
      @required this.abbreviation});
  factory BibleBook.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return BibleBook(
      bookId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}book_id']),
      bookName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}book_name']),
      numberOfChapters: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}number_of_chapters']),
      abbreviation: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}abbreviation']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || bookId != null) {
      map['book_id'] = Variable<int>(bookId);
    }
    if (!nullToAbsent || bookName != null) {
      map['book_name'] = Variable<String>(bookName);
    }
    if (!nullToAbsent || numberOfChapters != null) {
      map['number_of_chapters'] = Variable<int>(numberOfChapters);
    }
    if (!nullToAbsent || abbreviation != null) {
      map['abbreviation'] = Variable<String>(abbreviation);
    }
    return map;
  }

  BibleBooksCompanion toCompanion(bool nullToAbsent) {
    return BibleBooksCompanion(
      bookId:
          bookId == null && nullToAbsent ? const Value.absent() : Value(bookId),
      bookName: bookName == null && nullToAbsent
          ? const Value.absent()
          : Value(bookName),
      numberOfChapters: numberOfChapters == null && nullToAbsent
          ? const Value.absent()
          : Value(numberOfChapters),
      abbreviation: abbreviation == null && nullToAbsent
          ? const Value.absent()
          : Value(abbreviation),
    );
  }

  factory BibleBook.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return BibleBook(
      bookId: serializer.fromJson<int>(json['bookId']),
      bookName: serializer.fromJson<String>(json['bookName']),
      numberOfChapters: serializer.fromJson<int>(json['numberOfChapters']),
      abbreviation: serializer.fromJson<String>(json['abbreviation']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'bookId': serializer.toJson<int>(bookId),
      'bookName': serializer.toJson<String>(bookName),
      'numberOfChapters': serializer.toJson<int>(numberOfChapters),
      'abbreviation': serializer.toJson<String>(abbreviation),
    };
  }

  BibleBook copyWith(
          {int bookId,
          String bookName,
          int numberOfChapters,
          String abbreviation}) =>
      BibleBook(
        bookId: bookId ?? this.bookId,
        bookName: bookName ?? this.bookName,
        numberOfChapters: numberOfChapters ?? this.numberOfChapters,
        abbreviation: abbreviation ?? this.abbreviation,
      );
  @override
  String toString() {
    return (StringBuffer('BibleBook(')
          ..write('bookId: $bookId, ')
          ..write('bookName: $bookName, ')
          ..write('numberOfChapters: $numberOfChapters, ')
          ..write('abbreviation: $abbreviation')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      bookId.hashCode,
      $mrjc(bookName.hashCode,
          $mrjc(numberOfChapters.hashCode, abbreviation.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is BibleBook &&
          other.bookId == this.bookId &&
          other.bookName == this.bookName &&
          other.numberOfChapters == this.numberOfChapters &&
          other.abbreviation == this.abbreviation);
}

class BibleBooksCompanion extends UpdateCompanion<BibleBook> {
  final Value<int> bookId;
  final Value<String> bookName;
  final Value<int> numberOfChapters;
  final Value<String> abbreviation;
  const BibleBooksCompanion({
    this.bookId = const Value.absent(),
    this.bookName = const Value.absent(),
    this.numberOfChapters = const Value.absent(),
    this.abbreviation = const Value.absent(),
  });
  BibleBooksCompanion.insert({
    this.bookId = const Value.absent(),
    @required String bookName,
    @required int numberOfChapters,
    @required String abbreviation,
  })  : bookName = Value(bookName),
        numberOfChapters = Value(numberOfChapters),
        abbreviation = Value(abbreviation);
  static Insertable<BibleBook> custom({
    Expression<int> bookId,
    Expression<String> bookName,
    Expression<int> numberOfChapters,
    Expression<String> abbreviation,
  }) {
    return RawValuesInsertable({
      if (bookId != null) 'book_id': bookId,
      if (bookName != null) 'book_name': bookName,
      if (numberOfChapters != null) 'number_of_chapters': numberOfChapters,
      if (abbreviation != null) 'abbreviation': abbreviation,
    });
  }

  BibleBooksCompanion copyWith(
      {Value<int> bookId,
      Value<String> bookName,
      Value<int> numberOfChapters,
      Value<String> abbreviation}) {
    return BibleBooksCompanion(
      bookId: bookId ?? this.bookId,
      bookName: bookName ?? this.bookName,
      numberOfChapters: numberOfChapters ?? this.numberOfChapters,
      abbreviation: abbreviation ?? this.abbreviation,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (bookId.present) {
      map['book_id'] = Variable<int>(bookId.value);
    }
    if (bookName.present) {
      map['book_name'] = Variable<String>(bookName.value);
    }
    if (numberOfChapters.present) {
      map['number_of_chapters'] = Variable<int>(numberOfChapters.value);
    }
    if (abbreviation.present) {
      map['abbreviation'] = Variable<String>(abbreviation.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BibleBooksCompanion(')
          ..write('bookId: $bookId, ')
          ..write('bookName: $bookName, ')
          ..write('numberOfChapters: $numberOfChapters, ')
          ..write('abbreviation: $abbreviation')
          ..write(')'))
        .toString();
  }
}

class $BibleBooksTable extends BibleBooks
    with TableInfo<$BibleBooksTable, BibleBook> {
  final GeneratedDatabase _db;
  final String _alias;
  $BibleBooksTable(this._db, [this._alias]);
  final VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  GeneratedIntColumn _bookId;
  @override
  GeneratedIntColumn get bookId => _bookId ??= _constructBookId();
  GeneratedIntColumn _constructBookId() {
    return GeneratedIntColumn(
      'book_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _bookNameMeta = const VerificationMeta('bookName');
  GeneratedTextColumn _bookName;
  @override
  GeneratedTextColumn get bookName => _bookName ??= _constructBookName();
  GeneratedTextColumn _constructBookName() {
    return GeneratedTextColumn('book_name', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _numberOfChaptersMeta =
      const VerificationMeta('numberOfChapters');
  GeneratedIntColumn _numberOfChapters;
  @override
  GeneratedIntColumn get numberOfChapters =>
      _numberOfChapters ??= _constructNumberOfChapters();
  GeneratedIntColumn _constructNumberOfChapters() {
    return GeneratedIntColumn('number_of_chapters', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _abbreviationMeta =
      const VerificationMeta('abbreviation');
  GeneratedTextColumn _abbreviation;
  @override
  GeneratedTextColumn get abbreviation =>
      _abbreviation ??= _constructAbbreviation();
  GeneratedTextColumn _constructAbbreviation() {
    return GeneratedTextColumn('abbreviation', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  @override
  List<GeneratedColumn> get $columns =>
      [bookId, bookName, numberOfChapters, abbreviation];
  @override
  $BibleBooksTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'bible_books';
  @override
  final String actualTableName = 'bible_books';
  @override
  VerificationContext validateIntegrity(Insertable<BibleBook> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id'], _bookIdMeta));
    }
    if (data.containsKey('book_name')) {
      context.handle(_bookNameMeta,
          bookName.isAcceptableOrUnknown(data['book_name'], _bookNameMeta));
    } else if (isInserting) {
      context.missing(_bookNameMeta);
    }
    if (data.containsKey('number_of_chapters')) {
      context.handle(
          _numberOfChaptersMeta,
          numberOfChapters.isAcceptableOrUnknown(
              data['number_of_chapters'], _numberOfChaptersMeta));
    } else if (isInserting) {
      context.missing(_numberOfChaptersMeta);
    }
    if (data.containsKey('abbreviation')) {
      context.handle(
          _abbreviationMeta,
          abbreviation.isAcceptableOrUnknown(
              data['abbreviation'], _abbreviationMeta));
    } else if (isInserting) {
      context.missing(_abbreviationMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  BibleBook map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return BibleBook.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $BibleBooksTable createAlias(String alias) {
    return $BibleBooksTable(_db, alias);
  }
}

class CrossReference extends DataClass implements Insertable<CrossReference> {
  final int verseId;
  final int rank;
  final int sv;
  final int ev;
  CrossReference(
      {this.verseId,
      @required this.rank,
      @required this.sv,
      @required this.ev});
  factory CrossReference.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return CrossReference(
      verseId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}verse_id']),
      rank: intType.mapFromDatabaseResponse(data['${effectivePrefix}rank']),
      sv: intType.mapFromDatabaseResponse(data['${effectivePrefix}sv']),
      ev: intType.mapFromDatabaseResponse(data['${effectivePrefix}ev']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || verseId != null) {
      map['verse_id'] = Variable<int>(verseId);
    }
    if (!nullToAbsent || rank != null) {
      map['rank'] = Variable<int>(rank);
    }
    if (!nullToAbsent || sv != null) {
      map['sv'] = Variable<int>(sv);
    }
    if (!nullToAbsent || ev != null) {
      map['ev'] = Variable<int>(ev);
    }
    return map;
  }

  CrossReferencesCompanion toCompanion(bool nullToAbsent) {
    return CrossReferencesCompanion(
      verseId: verseId == null && nullToAbsent
          ? const Value.absent()
          : Value(verseId),
      rank: rank == null && nullToAbsent ? const Value.absent() : Value(rank),
      sv: sv == null && nullToAbsent ? const Value.absent() : Value(sv),
      ev: ev == null && nullToAbsent ? const Value.absent() : Value(ev),
    );
  }

  factory CrossReference.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CrossReference(
      verseId: serializer.fromJson<int>(json['verseId']),
      rank: serializer.fromJson<int>(json['rank']),
      sv: serializer.fromJson<int>(json['sv']),
      ev: serializer.fromJson<int>(json['ev']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'verseId': serializer.toJson<int>(verseId),
      'rank': serializer.toJson<int>(rank),
      'sv': serializer.toJson<int>(sv),
      'ev': serializer.toJson<int>(ev),
    };
  }

  CrossReference copyWith({int verseId, int rank, int sv, int ev}) =>
      CrossReference(
        verseId: verseId ?? this.verseId,
        rank: rank ?? this.rank,
        sv: sv ?? this.sv,
        ev: ev ?? this.ev,
      );
  @override
  String toString() {
    return (StringBuffer('CrossReference(')
          ..write('verseId: $verseId, ')
          ..write('rank: $rank, ')
          ..write('sv: $sv, ')
          ..write('ev: $ev')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      verseId.hashCode, $mrjc(rank.hashCode, $mrjc(sv.hashCode, ev.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is CrossReference &&
          other.verseId == this.verseId &&
          other.rank == this.rank &&
          other.sv == this.sv &&
          other.ev == this.ev);
}

class CrossReferencesCompanion extends UpdateCompanion<CrossReference> {
  final Value<int> verseId;
  final Value<int> rank;
  final Value<int> sv;
  final Value<int> ev;
  const CrossReferencesCompanion({
    this.verseId = const Value.absent(),
    this.rank = const Value.absent(),
    this.sv = const Value.absent(),
    this.ev = const Value.absent(),
  });
  CrossReferencesCompanion.insert({
    this.verseId = const Value.absent(),
    @required int rank,
    @required int sv,
    @required int ev,
  })  : rank = Value(rank),
        sv = Value(sv),
        ev = Value(ev);
  static Insertable<CrossReference> custom({
    Expression<int> verseId,
    Expression<int> rank,
    Expression<int> sv,
    Expression<int> ev,
  }) {
    return RawValuesInsertable({
      if (verseId != null) 'verse_id': verseId,
      if (rank != null) 'rank': rank,
      if (sv != null) 'sv': sv,
      if (ev != null) 'ev': ev,
    });
  }

  CrossReferencesCompanion copyWith(
      {Value<int> verseId, Value<int> rank, Value<int> sv, Value<int> ev}) {
    return CrossReferencesCompanion(
      verseId: verseId ?? this.verseId,
      rank: rank ?? this.rank,
      sv: sv ?? this.sv,
      ev: ev ?? this.ev,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (verseId.present) {
      map['verse_id'] = Variable<int>(verseId.value);
    }
    if (rank.present) {
      map['rank'] = Variable<int>(rank.value);
    }
    if (sv.present) {
      map['sv'] = Variable<int>(sv.value);
    }
    if (ev.present) {
      map['ev'] = Variable<int>(ev.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CrossReferencesCompanion(')
          ..write('verseId: $verseId, ')
          ..write('rank: $rank, ')
          ..write('sv: $sv, ')
          ..write('ev: $ev')
          ..write(')'))
        .toString();
  }
}

class $CrossReferencesTable extends CrossReferences
    with TableInfo<$CrossReferencesTable, CrossReference> {
  final GeneratedDatabase _db;
  final String _alias;
  $CrossReferencesTable(this._db, [this._alias]);
  final VerificationMeta _verseIdMeta = const VerificationMeta('verseId');
  GeneratedIntColumn _verseId;
  @override
  GeneratedIntColumn get verseId => _verseId ??= _constructVerseId();
  GeneratedIntColumn _constructVerseId() {
    return GeneratedIntColumn(
      'verse_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _rankMeta = const VerificationMeta('rank');
  GeneratedIntColumn _rank;
  @override
  GeneratedIntColumn get rank => _rank ??= _constructRank();
  GeneratedIntColumn _constructRank() {
    return GeneratedIntColumn('rank', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _svMeta = const VerificationMeta('sv');
  GeneratedIntColumn _sv;
  @override
  GeneratedIntColumn get sv => _sv ??= _constructSv();
  GeneratedIntColumn _constructSv() {
    return GeneratedIntColumn('sv', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _evMeta = const VerificationMeta('ev');
  GeneratedIntColumn _ev;
  @override
  GeneratedIntColumn get ev => _ev ??= _constructEv();
  GeneratedIntColumn _constructEv() {
    return GeneratedIntColumn('ev', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  @override
  List<GeneratedColumn> get $columns => [verseId, rank, sv, ev];
  @override
  $CrossReferencesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'cross_references';
  @override
  final String actualTableName = 'cross_references';
  @override
  VerificationContext validateIntegrity(Insertable<CrossReference> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('verse_id')) {
      context.handle(_verseIdMeta,
          verseId.isAcceptableOrUnknown(data['verse_id'], _verseIdMeta));
    }
    if (data.containsKey('rank')) {
      context.handle(
          _rankMeta, rank.isAcceptableOrUnknown(data['rank'], _rankMeta));
    } else if (isInserting) {
      context.missing(_rankMeta);
    }
    if (data.containsKey('sv')) {
      context.handle(_svMeta, sv.isAcceptableOrUnknown(data['sv'], _svMeta));
    } else if (isInserting) {
      context.missing(_svMeta);
    }
    if (data.containsKey('ev')) {
      context.handle(_evMeta, ev.isAcceptableOrUnknown(data['ev'], _evMeta));
    } else if (isInserting) {
      context.missing(_evMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  CrossReference map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return CrossReference.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CrossReferencesTable createAlias(String alias) {
    return $CrossReferencesTable(_db, alias);
  }
}

class ChapterTitle extends DataClass implements Insertable<ChapterTitle> {
  final int id;
  final int bookId;
  final int chapterNumber;
  final String chapterTitle;
  ChapterTitle(
      {@required this.id,
      this.bookId,
      this.chapterNumber,
      @required this.chapterTitle});
  factory ChapterTitle.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return ChapterTitle(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      bookId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}book_id']),
      chapterNumber: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}chapter_number']),
      chapterTitle: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}chapter_title']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || bookId != null) {
      map['book_id'] = Variable<int>(bookId);
    }
    if (!nullToAbsent || chapterNumber != null) {
      map['chapter_number'] = Variable<int>(chapterNumber);
    }
    if (!nullToAbsent || chapterTitle != null) {
      map['chapter_title'] = Variable<String>(chapterTitle);
    }
    return map;
  }

  ChapterTitlesCompanion toCompanion(bool nullToAbsent) {
    return ChapterTitlesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      bookId:
          bookId == null && nullToAbsent ? const Value.absent() : Value(bookId),
      chapterNumber: chapterNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(chapterNumber),
      chapterTitle: chapterTitle == null && nullToAbsent
          ? const Value.absent()
          : Value(chapterTitle),
    );
  }

  factory ChapterTitle.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ChapterTitle(
      id: serializer.fromJson<int>(json['id']),
      bookId: serializer.fromJson<int>(json['bookId']),
      chapterNumber: serializer.fromJson<int>(json['chapterNumber']),
      chapterTitle: serializer.fromJson<String>(json['chapterTitle']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'bookId': serializer.toJson<int>(bookId),
      'chapterNumber': serializer.toJson<int>(chapterNumber),
      'chapterTitle': serializer.toJson<String>(chapterTitle),
    };
  }

  ChapterTitle copyWith(
          {int id, int bookId, int chapterNumber, String chapterTitle}) =>
      ChapterTitle(
        id: id ?? this.id,
        bookId: bookId ?? this.bookId,
        chapterNumber: chapterNumber ?? this.chapterNumber,
        chapterTitle: chapterTitle ?? this.chapterTitle,
      );
  @override
  String toString() {
    return (StringBuffer('ChapterTitle(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('chapterTitle: $chapterTitle')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(bookId.hashCode,
          $mrjc(chapterNumber.hashCode, chapterTitle.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ChapterTitle &&
          other.id == this.id &&
          other.bookId == this.bookId &&
          other.chapterNumber == this.chapterNumber &&
          other.chapterTitle == this.chapterTitle);
}

class ChapterTitlesCompanion extends UpdateCompanion<ChapterTitle> {
  final Value<int> id;
  final Value<int> bookId;
  final Value<int> chapterNumber;
  final Value<String> chapterTitle;
  const ChapterTitlesCompanion({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.chapterNumber = const Value.absent(),
    this.chapterTitle = const Value.absent(),
  });
  ChapterTitlesCompanion.insert({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.chapterNumber = const Value.absent(),
    @required String chapterTitle,
  }) : chapterTitle = Value(chapterTitle);
  static Insertable<ChapterTitle> custom({
    Expression<int> id,
    Expression<int> bookId,
    Expression<int> chapterNumber,
    Expression<String> chapterTitle,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bookId != null) 'book_id': bookId,
      if (chapterNumber != null) 'chapter_number': chapterNumber,
      if (chapterTitle != null) 'chapter_title': chapterTitle,
    });
  }

  ChapterTitlesCompanion copyWith(
      {Value<int> id,
      Value<int> bookId,
      Value<int> chapterNumber,
      Value<String> chapterTitle}) {
    return ChapterTitlesCompanion(
      id: id ?? this.id,
      bookId: bookId ?? this.bookId,
      chapterNumber: chapterNumber ?? this.chapterNumber,
      chapterTitle: chapterTitle ?? this.chapterTitle,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<int>(bookId.value);
    }
    if (chapterNumber.present) {
      map['chapter_number'] = Variable<int>(chapterNumber.value);
    }
    if (chapterTitle.present) {
      map['chapter_title'] = Variable<String>(chapterTitle.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ChapterTitlesCompanion(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('chapterTitle: $chapterTitle')
          ..write(')'))
        .toString();
  }
}

class $ChapterTitlesTable extends ChapterTitles
    with TableInfo<$ChapterTitlesTable, ChapterTitle> {
  final GeneratedDatabase _db;
  final String _alias;
  $ChapterTitlesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  GeneratedIntColumn _bookId;
  @override
  GeneratedIntColumn get bookId => _bookId ??= _constructBookId();
  GeneratedIntColumn _constructBookId() {
    return GeneratedIntColumn(
      'book_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _chapterNumberMeta =
      const VerificationMeta('chapterNumber');
  GeneratedIntColumn _chapterNumber;
  @override
  GeneratedIntColumn get chapterNumber =>
      _chapterNumber ??= _constructChapterNumber();
  GeneratedIntColumn _constructChapterNumber() {
    return GeneratedIntColumn(
      'chapter_number',
      $tableName,
      true,
    );
  }

  final VerificationMeta _chapterTitleMeta =
      const VerificationMeta('chapterTitle');
  GeneratedTextColumn _chapterTitle;
  @override
  GeneratedTextColumn get chapterTitle =>
      _chapterTitle ??= _constructChapterTitle();
  GeneratedTextColumn _constructChapterTitle() {
    return GeneratedTextColumn('chapter_title', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, bookId, chapterNumber, chapterTitle];
  @override
  $ChapterTitlesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'chapter_titles';
  @override
  final String actualTableName = 'chapter_titles';
  @override
  VerificationContext validateIntegrity(Insertable<ChapterTitle> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id'], _bookIdMeta));
    }
    if (data.containsKey('chapter_number')) {
      context.handle(
          _chapterNumberMeta,
          chapterNumber.isAcceptableOrUnknown(
              data['chapter_number'], _chapterNumberMeta));
    }
    if (data.containsKey('chapter_title')) {
      context.handle(
          _chapterTitleMeta,
          chapterTitle.isAcceptableOrUnknown(
              data['chapter_title'], _chapterTitleMeta));
    } else if (isInserting) {
      context.missing(_chapterTitleMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ChapterTitle map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ChapterTitle.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ChapterTitlesTable createAlias(String alias) {
    return $ChapterTitlesTable(_db, alias);
  }
}

class DailyMemoryVerse extends DataClass
    implements Insertable<DailyMemoryVerse> {
  final int id;
  final int bookId;
  final String bookName;
  final int chapterNumber;
  final int verseNumber;
  final String verseText;
  final DateTime createdAt;
  final DateTime updatedAt;
  DailyMemoryVerse(
      {@required this.id,
      this.bookId,
      @required this.bookName,
      this.chapterNumber,
      this.verseNumber,
      this.verseText,
      @required this.createdAt,
      @required this.updatedAt});
  factory DailyMemoryVerse.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return DailyMemoryVerse(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      bookId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}book_id']),
      bookName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}book_name']),
      chapterNumber: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}chapter_number']),
      verseNumber: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}verse_number']),
      verseText: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}verse_text']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || bookId != null) {
      map['book_id'] = Variable<int>(bookId);
    }
    if (!nullToAbsent || bookName != null) {
      map['book_name'] = Variable<String>(bookName);
    }
    if (!nullToAbsent || chapterNumber != null) {
      map['chapter_number'] = Variable<int>(chapterNumber);
    }
    if (!nullToAbsent || verseNumber != null) {
      map['verse_number'] = Variable<int>(verseNumber);
    }
    if (!nullToAbsent || verseText != null) {
      map['verse_text'] = Variable<String>(verseText);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  DailyMemoryVersesCompanion toCompanion(bool nullToAbsent) {
    return DailyMemoryVersesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      bookId:
          bookId == null && nullToAbsent ? const Value.absent() : Value(bookId),
      bookName: bookName == null && nullToAbsent
          ? const Value.absent()
          : Value(bookName),
      chapterNumber: chapterNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(chapterNumber),
      verseNumber: verseNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(verseNumber),
      verseText: verseText == null && nullToAbsent
          ? const Value.absent()
          : Value(verseText),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory DailyMemoryVerse.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return DailyMemoryVerse(
      id: serializer.fromJson<int>(json['id']),
      bookId: serializer.fromJson<int>(json['bookId']),
      bookName: serializer.fromJson<String>(json['bookName']),
      chapterNumber: serializer.fromJson<int>(json['chapterNumber']),
      verseNumber: serializer.fromJson<int>(json['verseNumber']),
      verseText: serializer.fromJson<String>(json['verseText']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'bookId': serializer.toJson<int>(bookId),
      'bookName': serializer.toJson<String>(bookName),
      'chapterNumber': serializer.toJson<int>(chapterNumber),
      'verseNumber': serializer.toJson<int>(verseNumber),
      'verseText': serializer.toJson<String>(verseText),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  DailyMemoryVerse copyWith(
          {int id,
          int bookId,
          String bookName,
          int chapterNumber,
          int verseNumber,
          String verseText,
          DateTime createdAt,
          DateTime updatedAt}) =>
      DailyMemoryVerse(
        id: id ?? this.id,
        bookId: bookId ?? this.bookId,
        bookName: bookName ?? this.bookName,
        chapterNumber: chapterNumber ?? this.chapterNumber,
        verseNumber: verseNumber ?? this.verseNumber,
        verseText: verseText ?? this.verseText,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('DailyMemoryVerse(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('bookName: $bookName, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('verseNumber: $verseNumber, ')
          ..write('verseText: $verseText, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          bookId.hashCode,
          $mrjc(
              bookName.hashCode,
              $mrjc(
                  chapterNumber.hashCode,
                  $mrjc(
                      verseNumber.hashCode,
                      $mrjc(verseText.hashCode,
                          $mrjc(createdAt.hashCode, updatedAt.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is DailyMemoryVerse &&
          other.id == this.id &&
          other.bookId == this.bookId &&
          other.bookName == this.bookName &&
          other.chapterNumber == this.chapterNumber &&
          other.verseNumber == this.verseNumber &&
          other.verseText == this.verseText &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class DailyMemoryVersesCompanion extends UpdateCompanion<DailyMemoryVerse> {
  final Value<int> id;
  final Value<int> bookId;
  final Value<String> bookName;
  final Value<int> chapterNumber;
  final Value<int> verseNumber;
  final Value<String> verseText;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const DailyMemoryVersesCompanion({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.bookName = const Value.absent(),
    this.chapterNumber = const Value.absent(),
    this.verseNumber = const Value.absent(),
    this.verseText = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  DailyMemoryVersesCompanion.insert({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    @required String bookName,
    this.chapterNumber = const Value.absent(),
    this.verseNumber = const Value.absent(),
    this.verseText = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  }) : bookName = Value(bookName);
  static Insertable<DailyMemoryVerse> custom({
    Expression<int> id,
    Expression<int> bookId,
    Expression<String> bookName,
    Expression<int> chapterNumber,
    Expression<int> verseNumber,
    Expression<String> verseText,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bookId != null) 'book_id': bookId,
      if (bookName != null) 'book_name': bookName,
      if (chapterNumber != null) 'chapter_number': chapterNumber,
      if (verseNumber != null) 'verse_number': verseNumber,
      if (verseText != null) 'verse_text': verseText,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  DailyMemoryVersesCompanion copyWith(
      {Value<int> id,
      Value<int> bookId,
      Value<String> bookName,
      Value<int> chapterNumber,
      Value<int> verseNumber,
      Value<String> verseText,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return DailyMemoryVersesCompanion(
      id: id ?? this.id,
      bookId: bookId ?? this.bookId,
      bookName: bookName ?? this.bookName,
      chapterNumber: chapterNumber ?? this.chapterNumber,
      verseNumber: verseNumber ?? this.verseNumber,
      verseText: verseText ?? this.verseText,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<int>(bookId.value);
    }
    if (bookName.present) {
      map['book_name'] = Variable<String>(bookName.value);
    }
    if (chapterNumber.present) {
      map['chapter_number'] = Variable<int>(chapterNumber.value);
    }
    if (verseNumber.present) {
      map['verse_number'] = Variable<int>(verseNumber.value);
    }
    if (verseText.present) {
      map['verse_text'] = Variable<String>(verseText.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DailyMemoryVersesCompanion(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('bookName: $bookName, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('verseNumber: $verseNumber, ')
          ..write('verseText: $verseText, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $DailyMemoryVersesTable extends DailyMemoryVerses
    with TableInfo<$DailyMemoryVersesTable, DailyMemoryVerse> {
  final GeneratedDatabase _db;
  final String _alias;
  $DailyMemoryVersesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  GeneratedIntColumn _bookId;
  @override
  GeneratedIntColumn get bookId => _bookId ??= _constructBookId();
  GeneratedIntColumn _constructBookId() {
    return GeneratedIntColumn(
      'book_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _bookNameMeta = const VerificationMeta('bookName');
  GeneratedTextColumn _bookName;
  @override
  GeneratedTextColumn get bookName => _bookName ??= _constructBookName();
  GeneratedTextColumn _constructBookName() {
    return GeneratedTextColumn('book_name', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _chapterNumberMeta =
      const VerificationMeta('chapterNumber');
  GeneratedIntColumn _chapterNumber;
  @override
  GeneratedIntColumn get chapterNumber =>
      _chapterNumber ??= _constructChapterNumber();
  GeneratedIntColumn _constructChapterNumber() {
    return GeneratedIntColumn(
      'chapter_number',
      $tableName,
      true,
    );
  }

  final VerificationMeta _verseNumberMeta =
      const VerificationMeta('verseNumber');
  GeneratedIntColumn _verseNumber;
  @override
  GeneratedIntColumn get verseNumber =>
      _verseNumber ??= _constructVerseNumber();
  GeneratedIntColumn _constructVerseNumber() {
    return GeneratedIntColumn(
      'verse_number',
      $tableName,
      true,
    );
  }

  final VerificationMeta _verseTextMeta = const VerificationMeta('verseText');
  GeneratedTextColumn _verseText;
  @override
  GeneratedTextColumn get verseText => _verseText ??= _constructVerseText();
  GeneratedTextColumn _constructVerseText() {
    return GeneratedTextColumn(
      'verse_text',
      $tableName,
      true,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn('created_at', $tableName, false,
        defaultValue: currentDateAndTime);
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn('updated_at', $tableName, false,
        defaultValue: currentDateAndTime);
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        bookId,
        bookName,
        chapterNumber,
        verseNumber,
        verseText,
        createdAt,
        updatedAt
      ];
  @override
  $DailyMemoryVersesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'daily_memory_verses';
  @override
  final String actualTableName = 'daily_memory_verses';
  @override
  VerificationContext validateIntegrity(Insertable<DailyMemoryVerse> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id'], _bookIdMeta));
    }
    if (data.containsKey('book_name')) {
      context.handle(_bookNameMeta,
          bookName.isAcceptableOrUnknown(data['book_name'], _bookNameMeta));
    } else if (isInserting) {
      context.missing(_bookNameMeta);
    }
    if (data.containsKey('chapter_number')) {
      context.handle(
          _chapterNumberMeta,
          chapterNumber.isAcceptableOrUnknown(
              data['chapter_number'], _chapterNumberMeta));
    }
    if (data.containsKey('verse_number')) {
      context.handle(
          _verseNumberMeta,
          verseNumber.isAcceptableOrUnknown(
              data['verse_number'], _verseNumberMeta));
    }
    if (data.containsKey('verse_text')) {
      context.handle(_verseTextMeta,
          verseText.isAcceptableOrUnknown(data['verse_text'], _verseTextMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DailyMemoryVerse map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return DailyMemoryVerse.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $DailyMemoryVersesTable createAlias(String alias) {
    return $DailyMemoryVersesTable(_db, alias);
  }
}

class ChapterBookmark extends DataClass implements Insertable<ChapterBookmark> {
  final int id;
  final int bookId;
  final int chapterNumber;
  final String version;
  final String bookmarkColor;
  ChapterBookmark(
      {@required this.id,
      this.bookId,
      this.chapterNumber,
      @required this.version,
      @required this.bookmarkColor});
  factory ChapterBookmark.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return ChapterBookmark(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      bookId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}book_id']),
      chapterNumber: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}chapter_number']),
      version:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}version']),
      bookmarkColor: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}bookmark_color']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || bookId != null) {
      map['book_id'] = Variable<int>(bookId);
    }
    if (!nullToAbsent || chapterNumber != null) {
      map['chapter_number'] = Variable<int>(chapterNumber);
    }
    if (!nullToAbsent || version != null) {
      map['version'] = Variable<String>(version);
    }
    if (!nullToAbsent || bookmarkColor != null) {
      map['bookmark_color'] = Variable<String>(bookmarkColor);
    }
    return map;
  }

  ChapterBookmarksCompanion toCompanion(bool nullToAbsent) {
    return ChapterBookmarksCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      bookId:
          bookId == null && nullToAbsent ? const Value.absent() : Value(bookId),
      chapterNumber: chapterNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(chapterNumber),
      version: version == null && nullToAbsent
          ? const Value.absent()
          : Value(version),
      bookmarkColor: bookmarkColor == null && nullToAbsent
          ? const Value.absent()
          : Value(bookmarkColor),
    );
  }

  factory ChapterBookmark.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ChapterBookmark(
      id: serializer.fromJson<int>(json['id']),
      bookId: serializer.fromJson<int>(json['bookId']),
      chapterNumber: serializer.fromJson<int>(json['chapterNumber']),
      version: serializer.fromJson<String>(json['version']),
      bookmarkColor: serializer.fromJson<String>(json['bookmarkColor']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'bookId': serializer.toJson<int>(bookId),
      'chapterNumber': serializer.toJson<int>(chapterNumber),
      'version': serializer.toJson<String>(version),
      'bookmarkColor': serializer.toJson<String>(bookmarkColor),
    };
  }

  ChapterBookmark copyWith(
          {int id,
          int bookId,
          int chapterNumber,
          String version,
          String bookmarkColor}) =>
      ChapterBookmark(
        id: id ?? this.id,
        bookId: bookId ?? this.bookId,
        chapterNumber: chapterNumber ?? this.chapterNumber,
        version: version ?? this.version,
        bookmarkColor: bookmarkColor ?? this.bookmarkColor,
      );
  @override
  String toString() {
    return (StringBuffer('ChapterBookmark(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('version: $version, ')
          ..write('bookmarkColor: $bookmarkColor')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          bookId.hashCode,
          $mrjc(chapterNumber.hashCode,
              $mrjc(version.hashCode, bookmarkColor.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ChapterBookmark &&
          other.id == this.id &&
          other.bookId == this.bookId &&
          other.chapterNumber == this.chapterNumber &&
          other.version == this.version &&
          other.bookmarkColor == this.bookmarkColor);
}

class ChapterBookmarksCompanion extends UpdateCompanion<ChapterBookmark> {
  final Value<int> id;
  final Value<int> bookId;
  final Value<int> chapterNumber;
  final Value<String> version;
  final Value<String> bookmarkColor;
  const ChapterBookmarksCompanion({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.chapterNumber = const Value.absent(),
    this.version = const Value.absent(),
    this.bookmarkColor = const Value.absent(),
  });
  ChapterBookmarksCompanion.insert({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.chapterNumber = const Value.absent(),
    @required String version,
    @required String bookmarkColor,
  })  : version = Value(version),
        bookmarkColor = Value(bookmarkColor);
  static Insertable<ChapterBookmark> custom({
    Expression<int> id,
    Expression<int> bookId,
    Expression<int> chapterNumber,
    Expression<String> version,
    Expression<String> bookmarkColor,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bookId != null) 'book_id': bookId,
      if (chapterNumber != null) 'chapter_number': chapterNumber,
      if (version != null) 'version': version,
      if (bookmarkColor != null) 'bookmark_color': bookmarkColor,
    });
  }

  ChapterBookmarksCompanion copyWith(
      {Value<int> id,
      Value<int> bookId,
      Value<int> chapterNumber,
      Value<String> version,
      Value<String> bookmarkColor}) {
    return ChapterBookmarksCompanion(
      id: id ?? this.id,
      bookId: bookId ?? this.bookId,
      chapterNumber: chapterNumber ?? this.chapterNumber,
      version: version ?? this.version,
      bookmarkColor: bookmarkColor ?? this.bookmarkColor,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<int>(bookId.value);
    }
    if (chapterNumber.present) {
      map['chapter_number'] = Variable<int>(chapterNumber.value);
    }
    if (version.present) {
      map['version'] = Variable<String>(version.value);
    }
    if (bookmarkColor.present) {
      map['bookmark_color'] = Variable<String>(bookmarkColor.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ChapterBookmarksCompanion(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('version: $version, ')
          ..write('bookmarkColor: $bookmarkColor')
          ..write(')'))
        .toString();
  }
}

class $ChapterBookmarksTable extends ChapterBookmarks
    with TableInfo<$ChapterBookmarksTable, ChapterBookmark> {
  final GeneratedDatabase _db;
  final String _alias;
  $ChapterBookmarksTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  GeneratedIntColumn _bookId;
  @override
  GeneratedIntColumn get bookId => _bookId ??= _constructBookId();
  GeneratedIntColumn _constructBookId() {
    return GeneratedIntColumn(
      'book_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _chapterNumberMeta =
      const VerificationMeta('chapterNumber');
  GeneratedIntColumn _chapterNumber;
  @override
  GeneratedIntColumn get chapterNumber =>
      _chapterNumber ??= _constructChapterNumber();
  GeneratedIntColumn _constructChapterNumber() {
    return GeneratedIntColumn(
      'chapter_number',
      $tableName,
      true,
    );
  }

  final VerificationMeta _versionMeta = const VerificationMeta('version');
  GeneratedTextColumn _version;
  @override
  GeneratedTextColumn get version => _version ??= _constructVersion();
  GeneratedTextColumn _constructVersion() {
    return GeneratedTextColumn('version', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _bookmarkColorMeta =
      const VerificationMeta('bookmarkColor');
  GeneratedTextColumn _bookmarkColor;
  @override
  GeneratedTextColumn get bookmarkColor =>
      _bookmarkColor ??= _constructBookmarkColor();
  GeneratedTextColumn _constructBookmarkColor() {
    return GeneratedTextColumn(
      'bookmark_color',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, bookId, chapterNumber, version, bookmarkColor];
  @override
  $ChapterBookmarksTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'chapter_bookmarks';
  @override
  final String actualTableName = 'chapter_bookmarks';
  @override
  VerificationContext validateIntegrity(Insertable<ChapterBookmark> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id'], _bookIdMeta));
    }
    if (data.containsKey('chapter_number')) {
      context.handle(
          _chapterNumberMeta,
          chapterNumber.isAcceptableOrUnknown(
              data['chapter_number'], _chapterNumberMeta));
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version'], _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('bookmark_color')) {
      context.handle(
          _bookmarkColorMeta,
          bookmarkColor.isAcceptableOrUnknown(
              data['bookmark_color'], _bookmarkColorMeta));
    } else if (isInserting) {
      context.missing(_bookmarkColorMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ChapterBookmark map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ChapterBookmark.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ChapterBookmarksTable createAlias(String alias) {
    return $ChapterBookmarksTable(_db, alias);
  }
}

class Note extends DataClass implements Insertable<Note> {
  final int id;
  final String title;
  final String content;
  final bool isForVerse;
  final int verseId;
  final DateTime createdAt;
  final DateTime updatedAt;
  Note(
      {@required this.id,
      @required this.title,
      @required this.content,
      @required this.isForVerse,
      this.verseId,
      @required this.createdAt,
      @required this.updatedAt});
  factory Note.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Note(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      content:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}content']),
      isForVerse: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_for_verse']),
      verseId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}verse_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || content != null) {
      map['content'] = Variable<String>(content);
    }
    if (!nullToAbsent || isForVerse != null) {
      map['is_for_verse'] = Variable<bool>(isForVerse);
    }
    if (!nullToAbsent || verseId != null) {
      map['verse_id'] = Variable<int>(verseId);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  NotesCompanion toCompanion(bool nullToAbsent) {
    return NotesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      content: content == null && nullToAbsent
          ? const Value.absent()
          : Value(content),
      isForVerse: isForVerse == null && nullToAbsent
          ? const Value.absent()
          : Value(isForVerse),
      verseId: verseId == null && nullToAbsent
          ? const Value.absent()
          : Value(verseId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory Note.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Note(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      content: serializer.fromJson<String>(json['content']),
      isForVerse: serializer.fromJson<bool>(json['isForVerse']),
      verseId: serializer.fromJson<int>(json['verseId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'content': serializer.toJson<String>(content),
      'isForVerse': serializer.toJson<bool>(isForVerse),
      'verseId': serializer.toJson<int>(verseId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Note copyWith(
          {int id,
          String title,
          String content,
          bool isForVerse,
          int verseId,
          DateTime createdAt,
          DateTime updatedAt}) =>
      Note(
        id: id ?? this.id,
        title: title ?? this.title,
        content: content ?? this.content,
        isForVerse: isForVerse ?? this.isForVerse,
        verseId: verseId ?? this.verseId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Note(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('isForVerse: $isForVerse, ')
          ..write('verseId: $verseId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          title.hashCode,
          $mrjc(
              content.hashCode,
              $mrjc(
                  isForVerse.hashCode,
                  $mrjc(verseId.hashCode,
                      $mrjc(createdAt.hashCode, updatedAt.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Note &&
          other.id == this.id &&
          other.title == this.title &&
          other.content == this.content &&
          other.isForVerse == this.isForVerse &&
          other.verseId == this.verseId &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class NotesCompanion extends UpdateCompanion<Note> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> content;
  final Value<bool> isForVerse;
  final Value<int> verseId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const NotesCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.content = const Value.absent(),
    this.isForVerse = const Value.absent(),
    this.verseId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  NotesCompanion.insert({
    this.id = const Value.absent(),
    @required String title,
    @required String content,
    this.isForVerse = const Value.absent(),
    this.verseId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : title = Value(title),
        content = Value(content);
  static Insertable<Note> custom({
    Expression<int> id,
    Expression<String> title,
    Expression<String> content,
    Expression<bool> isForVerse,
    Expression<int> verseId,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (content != null) 'content': content,
      if (isForVerse != null) 'is_for_verse': isForVerse,
      if (verseId != null) 'verse_id': verseId,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  NotesCompanion copyWith(
      {Value<int> id,
      Value<String> title,
      Value<String> content,
      Value<bool> isForVerse,
      Value<int> verseId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return NotesCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      isForVerse: isForVerse ?? this.isForVerse,
      verseId: verseId ?? this.verseId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (isForVerse.present) {
      map['is_for_verse'] = Variable<bool>(isForVerse.value);
    }
    if (verseId.present) {
      map['verse_id'] = Variable<int>(verseId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NotesCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('isForVerse: $isForVerse, ')
          ..write('verseId: $verseId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $NotesTable extends Notes with TableInfo<$NotesTable, Note> {
  final GeneratedDatabase _db;
  final String _alias;
  $NotesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn(
      'title',
      $tableName,
      false,
    );
  }

  final VerificationMeta _contentMeta = const VerificationMeta('content');
  GeneratedTextColumn _content;
  @override
  GeneratedTextColumn get content => _content ??= _constructContent();
  GeneratedTextColumn _constructContent() {
    return GeneratedTextColumn(
      'content',
      $tableName,
      false,
    );
  }

  final VerificationMeta _isForVerseMeta = const VerificationMeta('isForVerse');
  GeneratedBoolColumn _isForVerse;
  @override
  GeneratedBoolColumn get isForVerse => _isForVerse ??= _constructIsForVerse();
  GeneratedBoolColumn _constructIsForVerse() {
    return GeneratedBoolColumn('is_for_verse', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _verseIdMeta = const VerificationMeta('verseId');
  GeneratedIntColumn _verseId;
  @override
  GeneratedIntColumn get verseId => _verseId ??= _constructVerseId();
  GeneratedIntColumn _constructVerseId() {
    return GeneratedIntColumn(
      'verse_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn('created_at', $tableName, false,
        defaultValue: currentDateAndTime);
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn('updated_at', $tableName, false,
        defaultValue: currentDateAndTime);
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, title, content, isForVerse, verseId, createdAt, updatedAt];
  @override
  $NotesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'notes';
  @override
  final String actualTableName = 'notes';
  @override
  VerificationContext validateIntegrity(Insertable<Note> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title'], _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content'], _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('is_for_verse')) {
      context.handle(
          _isForVerseMeta,
          isForVerse.isAcceptableOrUnknown(
              data['is_for_verse'], _isForVerseMeta));
    }
    if (data.containsKey('verse_id')) {
      context.handle(_verseIdMeta,
          verseId.isAcceptableOrUnknown(data['verse_id'], _verseIdMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Note map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Note.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $NotesTable createAlias(String alias) {
    return $NotesTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  SearchNivVerses _searchNivVerses;
  SearchNivVerses get searchNivVerses =>
      _searchNivVerses ??= SearchNivVerses(this);
  SearchKjvVerses _searchKjvVerses;
  SearchKjvVerses get searchKjvVerses =>
      _searchKjvVerses ??= SearchKjvVerses(this);
  SearchNkjvVerses _searchNkjvVerses;
  SearchNkjvVerses get searchNkjvVerses =>
      _searchNkjvVerses ??= SearchNkjvVerses(this);
  SearchMsgVerses _searchMsgVerses;
  SearchMsgVerses get searchMsgVerses =>
      _searchMsgVerses ??= SearchMsgVerses(this);
  SearchAmpVerses _searchAmpVerses;
  SearchAmpVerses get searchAmpVerses =>
      _searchAmpVerses ??= SearchAmpVerses(this);
  $MsgBibleVersesTable _msgBibleVerses;
  $MsgBibleVersesTable get msgBibleVerses =>
      _msgBibleVerses ??= $MsgBibleVersesTable(this);
  $AmpBibleVersesTable _ampBibleVerses;
  $AmpBibleVersesTable get ampBibleVerses =>
      _ampBibleVerses ??= $AmpBibleVersesTable(this);
  $KjvBibleVersesTable _kjvBibleVerses;
  $KjvBibleVersesTable get kjvBibleVerses =>
      _kjvBibleVerses ??= $KjvBibleVersesTable(this);
  $NkjvBibleVersesTable _nkjvBibleVerses;
  $NkjvBibleVersesTable get nkjvBibleVerses =>
      _nkjvBibleVerses ??= $NkjvBibleVersesTable(this);
  $NivBibleVersesTable _nivBibleVerses;
  $NivBibleVersesTable get nivBibleVerses =>
      _nivBibleVerses ??= $NivBibleVersesTable(this);
  $BibleBooksTable _bibleBooks;
  $BibleBooksTable get bibleBooks => _bibleBooks ??= $BibleBooksTable(this);
  $CrossReferencesTable _crossReferences;
  $CrossReferencesTable get crossReferences =>
      _crossReferences ??= $CrossReferencesTable(this);
  $ChapterTitlesTable _chapterTitles;
  $ChapterTitlesTable get chapterTitles =>
      _chapterTitles ??= $ChapterTitlesTable(this);
  $DailyMemoryVersesTable _dailyMemoryVerses;
  $DailyMemoryVersesTable get dailyMemoryVerses =>
      _dailyMemoryVerses ??= $DailyMemoryVersesTable(this);
  $ChapterBookmarksTable _chapterBookmarks;
  $ChapterBookmarksTable get chapterBookmarks =>
      _chapterBookmarks ??= $ChapterBookmarksTable(this);
  $NotesTable _notes;
  $NotesTable get notes => _notes ??= $NotesTable(this);
  BibleDao _bibleDao;
  BibleDao get bibleDao => _bibleDao ??= BibleDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        searchNivVerses,
        searchKjvVerses,
        searchNkjvVerses,
        searchMsgVerses,
        searchAmpVerses,
        msgBibleVerses,
        ampBibleVerses,
        kjvBibleVerses,
        nkjvBibleVerses,
        nivBibleVerses,
        bibleBooks,
        crossReferences,
        chapterTitles,
        dailyMemoryVerses,
        chapterBookmarks,
        notes
      ];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$BibleDaoMixin on DatabaseAccessor<AppDatabase> {
  SearchNivVerses get searchNivVerses => attachedDatabase.searchNivVerses;
  SearchKjvVerses get searchKjvVerses => attachedDatabase.searchKjvVerses;
  SearchNkjvVerses get searchNkjvVerses => attachedDatabase.searchNkjvVerses;
  SearchMsgVerses get searchMsgVerses => attachedDatabase.searchMsgVerses;
  SearchAmpVerses get searchAmpVerses => attachedDatabase.searchAmpVerses;
  $MsgBibleVersesTable get msgBibleVerses => attachedDatabase.msgBibleVerses;
  $AmpBibleVersesTable get ampBibleVerses => attachedDatabase.ampBibleVerses;
  $KjvBibleVersesTable get kjvBibleVerses => attachedDatabase.kjvBibleVerses;
  $NkjvBibleVersesTable get nkjvBibleVerses => attachedDatabase.nkjvBibleVerses;
  $NivBibleVersesTable get nivBibleVerses => attachedDatabase.nivBibleVerses;
  $BibleBooksTable get bibleBooks => attachedDatabase.bibleBooks;
  $CrossReferencesTable get crossReferences => attachedDatabase.crossReferences;
  $ChapterTitlesTable get chapterTitles => attachedDatabase.chapterTitles;
  $DailyMemoryVersesTable get dailyMemoryVerses =>
      attachedDatabase.dailyMemoryVerses;
  $ChapterBookmarksTable get chapterBookmarks =>
      attachedDatabase.chapterBookmarks;
  Selectable<SearchNivVerse> searchNivVerseGenerated(String var1) {
    return customSelect(
        'select * from search_niv_verses where search_niv_verses MATCH ? order by rank',
        variables: [Variable.withString(var1)],
        readsFrom: {searchNivVerses}).map(searchNivVerses.mapFromRow);
  }

  Selectable<SearchKjvVerse> searchKjvVerseGenerated(String var1) {
    return customSelect(
        'select * from search_kjv_verses where search_kjv_verses MATCH ? order by rank',
        variables: [Variable.withString(var1)],
        readsFrom: {searchKjvVerses}).map(searchKjvVerses.mapFromRow);
  }

  Selectable<SearchNkjvVerse> searchNkjvVerseGenerated(String var1) {
    return customSelect(
        'select * from search_nkjv_verses where search_nkjv_verses MATCH ? order by rank',
        variables: [Variable.withString(var1)],
        readsFrom: {searchNkjvVerses}).map(searchNkjvVerses.mapFromRow);
  }

  Selectable<SearchMsgVerse> searchMsgVerseGenerated(String var1) {
    return customSelect(
        'select * from search_msg_verses where search_msg_verses MATCH ? order by rank',
        variables: [Variable.withString(var1)],
        readsFrom: {searchMsgVerses}).map(searchMsgVerses.mapFromRow);
  }

  Selectable<SearchAmpVerse> searchAmpVerseGenerated(String var1) {
    return customSelect(
        'select * from search_amp_verses where search_amp_verses MATCH ? order by rank',
        variables: [Variable.withString(var1)],
        readsFrom: {searchAmpVerses}).map(searchAmpVerses.mapFromRow);
  }

  Selectable<GetHighlightedVersesGeneratedResult> getHighlightedVersesGenerated(
      String var1) {
    return customSelect(
        'select \'NIV\' as version, bb.book_name || \' \' ||niv.chapter_number || \':\' || niv.verse_number as bcv_name, niv.* from niv_bible_verses niv, bible_books bb where niv.book_id = bb.book_id and niv.is_highlighted =1 and highlighted_color like ?1 union select \'NKJV\' as version, bb.book_name || \' \' ||nkjv.chapter_number || \':\' || nkjv.verse_number as bcv_name, nkjv.* from nkjv_bible_verses nkjv, bible_books bb where nkjv.book_id = bb.book_id and nkjv.is_highlighted =1 and highlighted_color like ?1 union select \'KJV\' as version, bb.book_name || \' \' ||kjv.chapter_number || \':\' || kjv.verse_number as bcv_name, kjv.* from kjv_bible_verses kjv, bible_books bb where kjv.book_id = bb.book_id and kjv.is_highlighted =1  and highlighted_color like ?1 union select \'AMP\' as version, bb.book_name || \' \' ||amp.chapter_number || \':\' || amp.verse_number as bcv_name, amp.* from amp_bible_verses amp, bible_books bb where amp.book_id = bb.book_id and amp.is_highlighted =1  and highlighted_color like ?1 union select \'MSG\' as version, bb.book_name || \' \' ||msg.chapter_number || \':\' || msg.verse_number as bcv_name, msg.* from msg_bible_verses msg, bible_books bb where msg.book_id = bb.book_id and msg.is_highlighted =1  and highlighted_color like ?1',
        variables: [
          Variable.withString(var1)
        ],
        readsFrom: {
          bibleBooks,
          nivBibleVerses,
          nkjvBibleVerses,
          kjvBibleVerses,
          ampBibleVerses,
          msgBibleVerses
        }).map((QueryRow row) {
      return GetHighlightedVersesGeneratedResult(
        version: row.readString('version'),
        bcvName: row.readString('bcv_name'),
        id: row.readInt('id'),
        bookId: row.readInt('book_id'),
        chapterNumber: row.readInt('chapter_number'),
        verseNumber: row.readInt('verse_number'),
        verseText: row.readString('verse_text'),
        isHighlighted: row.readBool('is_highlighted'),
        highlightedColor: row.readString('highlighted_color'),
      );
    });
  }
}

class GetHighlightedVersesGeneratedResult {
  final String version;
  final String bcvName;
  final int id;
  final int bookId;
  final int chapterNumber;
  final int verseNumber;
  final String verseText;
  final bool isHighlighted;
  final String highlightedColor;
  GetHighlightedVersesGeneratedResult({
    this.version,
    this.bcvName,
    this.id,
    this.bookId,
    this.chapterNumber,
    this.verseNumber,
    this.verseText,
    this.isHighlighted,
    this.highlightedColor,
  });
}
