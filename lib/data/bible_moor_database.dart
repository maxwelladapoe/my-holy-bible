import 'dart:io';

import 'package:flutter/services.dart';
import 'package:moor/moor.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part "bible_moor_database.g.dart";

class ChapterTitles extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get bookId => integer().nullable()();

  IntColumn get chapterNumber => integer().nullable()();

  TextColumn get chapterTitle => text().customConstraint('NOT NULL')();
}

class CrossReferences extends Table {
  IntColumn get verseId => integer().nullable()();

  IntColumn get rank => integer().customConstraint('NOT NULL')();

  IntColumn get sv => integer().customConstraint('NOT NULL')();

  IntColumn get ev => integer().customConstraint('NOT NULL')();
}

class BibleBooks extends Table {
  IntColumn get bookId => integer().nullable()();

  TextColumn get bookName => text().customConstraint('NOT NULL')();

  IntColumn get numberOfChapters => integer().customConstraint('NOT NULL')();

  TextColumn get abbreviation => text().customConstraint('NOT NULL')();
}

class DailyMemoryVerses extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get bookId => integer().nullable()();

  TextColumn get bookName => text().customConstraint('NOT NULL')();

  IntColumn get chapterNumber => integer().nullable()();

  IntColumn get verseNumber => integer().nullable()();

  TextColumn get verseText => text().nullable()();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
}

class KjvBibleVerses extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get bookId => integer().nullable()();

  IntColumn get chapterNumber => integer().nullable()();

  IntColumn get verseNumber => integer().nullable()();

  TextColumn get verseText => text().nullable()();

  BoolColumn get isHighlighted => boolean().withDefault(Constant(false))();

  TextColumn get highlightedColor => text()();
}

class NivBibleVerses extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get bookId => integer().nullable()();

  IntColumn get chapterNumber => integer().nullable()();

  IntColumn get verseNumber => integer().nullable()();

  TextColumn get verseText => text().nullable()();

  BoolColumn get isHighlighted => boolean().withDefault(Constant(false))();

  TextColumn get highlightedColor => text()();
}

class NkjvBibleVerses extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get bookId => integer().nullable()();

  IntColumn get chapterNumber => integer().nullable()();

  IntColumn get verseNumber => integer().nullable()();

  TextColumn get verseText => text().nullable()();

  BoolColumn get isHighlighted => boolean().withDefault(Constant(false))();

  TextColumn get highlightedColor => text()();
}

class AmpBibleVerses extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get bookId => integer().nullable()();

  IntColumn get chapterNumber => integer().nullable()();

  IntColumn get verseNumber => integer().nullable()();

  TextColumn get verseText => text().nullable()();

  BoolColumn get isHighlighted => boolean().withDefault(Constant(false))();

  TextColumn get highlightedColor => text()();
}

class MsgBibleVerses extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get bookId => integer().nullable()();

  IntColumn get chapterNumber => integer().nullable()();

  IntColumn get verseNumber => integer().nullable()();

  TextColumn get verseText => text().nullable()();

  BoolColumn get isHighlighted => boolean().withDefault(Constant(false))();

  TextColumn get highlightedColor => text().nullable()();
}

class ChapterBookmarks extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get bookId => integer().nullable()();

  IntColumn get chapterNumber => integer().nullable()();

  TextColumn get version => text().customConstraint('NOT NULL')();

  TextColumn get bookmarkColor => text()();
}

class Notes extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get title => text()();

  TextColumn get content => text()();

  BoolColumn get isForVerse => boolean().withDefault(Constant(false))();

  IntColumn get verseId => integer().nullable()();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
}

@UseMoor(include: {
  'virtualTables.moor'
}, tables: [
  MsgBibleVerses,
  AmpBibleVerses,
  KjvBibleVerses,
  NkjvBibleVerses,
  NivBibleVerses,
  BibleBooks,
  CrossReferences,
  ChapterTitles,
  DailyMemoryVerses,
  ChapterBookmarks,
  Notes
], daos: [
  BibleDao
], queries: {})
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super(LazyDatabase(() async {
          VmDatabase database;
          final dbFolder = await getApplicationDocumentsDirectory();
          var path = p.join(dbFolder.path, 'bibles_db.db');
          final file = File(path);

          if (!file.existsSync()) {
            //copy the file from the assets folder
            print('creating a new copy of the database');

            // Make sure the parent directory exists
            try {
              await Directory(p.dirname(path)).create(recursive: true);
            } catch (_) {}
            //Copy from assets

            var data = await rootBundle
                .load(p.join('assets', 'databases', 'bibles_db.db'));

            List<int> bytes =
                data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

            // Write and flush the bytes written
            await file.writeAsBytes(bytes, flush: true);

            database = VmDatabase(file, logStatements: true);

            print('created a new copy of the database successfully');
          } else {
            print('Opening Existing Database');
            database = VmDatabase(file, logStatements: true);
          }

          return database;
        }));

  @override
  int get schemaVersion => 1;

  Future<List<Note>> getAllNotes() => select(notes).get();

  Stream<List<Note>> watchAllNotes() => select(notes).watch();

  Future insertNote(Note note) => into(notes).insert(note);

  Future updateNote(Note note) => update(notes).replace(note);

  Future deleteNote(Note note) => delete(notes).delete(note);

  @override
  MigrationStrategy get migration => MigrationStrategy(
        beforeOpen: (details) async {
          var insertSql = '';
          if (details.wasCreated) {
            insertSql =
                "INSERT INTO search_niv_verses (bcv_name,bible_book,book_id,chapter_number, verse_number, verse_text,is_highlighted,highlighted_color)"
                "SELECT  bb.book_name || ' ' ||n.chapter_number || ':' || n.verse_number as bcv_name,"
                " bb.book_name as bible_book, n.book_id as book_id, n.chapter_number, n.verse_number, n.verse_text,"
                " n.is_highlighted,n.highlighted_color FROM niv_bible_verses n, bible_books bb where n.book_id = bb.book_id;"
                "INSERT INTO search_kjv_verses (bcv_name,bible_book,book_id,chapter_number, verse_number, verse_text,is_highlighted,highlighted_color)"
                "SELECT  bb.book_name || ' ' ||n.chapter_number || ':' || n.verse_number as bcv_name,"
                " bb.book_name as bible_book, n.book_id as book_id, n.chapter_number, n.verse_number, n.verse_text,"
                " n.is_highlighted,n.highlighted_color FROM kjv_bible_verses n, bible_books bb where n.book_id = bb.book_id;"
                "INSERT INTO search_nkjv_verses (bcv_name,bible_book,book_id,chapter_number, verse_number, verse_text,is_highlighted,highlighted_color)"
                "SELECT  bb.book_name || ' ' ||n.chapter_number || ':' || n.verse_number as bcv_name,"
                " bb.book_name as bible_book, n.book_id as book_id, n.chapter_number, n.verse_number, n.verse_text,"
                " n.is_highlighted,n.highlighted_color FROM nkjv_bible_verses n, bible_books bb where n.book_id = bb.book_id;"
                "INSERT INTO search_amp_verses (bcv_name,bible_book,book_id,chapter_number, verse_number, verse_text,is_highlighted,highlighted_color)"
                "SELECT  bb.book_name || ' ' ||n.chapter_number || ':' || n.verse_number as bcv_name,"
                " bb.book_name as bible_book, n.book_id as book_id, n.chapter_number, n.verse_number, n.verse_text,"
                " n.is_highlighted,n.highlighted_color FROM amp_bible_verses n, bible_books bb where n.book_id = bb.book_id;"
                "INSERT INTO search_msg_verses (bcv_name,bible_book,book_id,chapter_number, verse_number, verse_text,is_highlighted,highlighted_color)"
                "SELECT  bb.book_name || ' ' ||n.chapter_number || ':' || n.verse_number as bcv_name,"
                " bb.book_name as bible_book, n.book_id as book_id, n.chapter_number, n.verse_number, n.verse_text,"
                " n.is_highlighted,n.highlighted_color FROM msg_bible_verses n, bible_books bb where n.book_id = bb.book_id;";
          }
          await customStatement(insertSql);
        },
      );
}

@UseDao(include: {
  'virtualTables.moor'
}, tables: [
  MsgBibleVerses,
  AmpBibleVerses,
  KjvBibleVerses,
  NkjvBibleVerses,
  NivBibleVerses,
  BibleBooks,
  CrossReferences,
  ChapterTitles,
  DailyMemoryVerses,
  ChapterBookmarks,
], queries: {
  'searchNivVerseGenerated':
      "select * from search_niv_verses where search_niv_verses MATCH ? order by rank",
  'searchKjvVerseGenerated':
      "select * from search_kjv_verses where search_kjv_verses MATCH ? order by rank",
  'searchNkjvVerseGenerated':
      "select * from search_nkjv_verses where search_nkjv_verses MATCH ? order by rank",
  'searchMsgVerseGenerated':
      "select * from search_msg_verses where search_msg_verses MATCH ? order by rank",
  'searchAmpVerseGenerated':
      "select * from search_amp_verses where search_amp_verses MATCH ? order by rank",

  'getHighlightedVersesGenerated':
      "select 'NIV' as version, bb.book_name || ' ' ||niv.chapter_number || ':' || niv.verse_number as bcv_name, niv.* "
          "from niv_bible_verses niv, bible_books bb where niv.book_id = bb.book_id and niv.is_highlighted =1 and highlighted_color like ?1 "
          "union "
          "select 'NKJV' as version, bb.book_name || ' ' ||nkjv.chapter_number || ':' || nkjv.verse_number as bcv_name, nkjv.* "
          "from nkjv_bible_verses nkjv, bible_books bb where nkjv.book_id = bb.book_id and nkjv.is_highlighted =1 and highlighted_color like ?1 "
          "union "
          "select 'KJV' as version, bb.book_name || ' ' ||kjv.chapter_number || ':' || kjv.verse_number as bcv_name, kjv.* "
          "from kjv_bible_verses kjv, bible_books bb where kjv.book_id = bb.book_id and kjv.is_highlighted =1  and highlighted_color like ?1 "
          "union "
          "select 'AMP' as version, bb.book_name || ' ' ||amp.chapter_number || ':' || amp.verse_number as bcv_name, amp.* "
          "from amp_bible_verses amp, bible_books bb where amp.book_id = bb.book_id and amp.is_highlighted =1  and highlighted_color like ?1 "
          "union "
          "select 'MSG' as version, bb.book_name || ' ' ||msg.chapter_number || ':' || msg.verse_number as bcv_name, msg.* "
          "from msg_bible_verses msg, bible_books bb where msg.book_id = bb.book_id and msg.is_highlighted =1  and highlighted_color like ?1 "
})
class BibleDao extends DatabaseAccessor<AppDatabase> with _$BibleDaoMixin {
  final AppDatabase db;

  BibleDao(this.db) : super(db);

  Future<DailyMemoryVerse> getVerseOfDay() {
    return (select(dailyMemoryVerses)..limit(1)).getSingle();
  }

  Stream<DailyMemoryVerse> watchVerseOfDay() {
    return (select(dailyMemoryVerses)..limit(1)).watchSingle();
  }

  Future<List<BibleBook>> getTestamentBooks(String testament) {
    if (testament == 'old') {
      //new testaments
      return (select(bibleBooks)..limit(39)).get();
    } else {
      //old testaments
      return (select(bibleBooks)..limit(27, offset: 39)).get();
    }
  }

  Future<BibleBook> getBibleBook(int bookId) {
    return (select(bibleBooks)..where((tbl) => tbl.bookId.equals(bookId)))
        .getSingle();
  }

  Future<List<KjvBibleVerse>> getKjvChapterVerses(
      int bookId, int chapterNumber) {
    return (select(kjvBibleVerses)
          ..where((tbl) => tbl.chapterNumber.equals(chapterNumber))
          ..where((tbl) => tbl.bookId.equals(bookId)))
        .get();
  }

  Future<List<NkjvBibleVerse>> getNkjvChapterVerses(
      int bookId, int chapterNumber) {
    return (select(nkjvBibleVerses)
          ..where((tbl) => tbl.chapterNumber.equals(chapterNumber))
          ..where((tbl) => tbl.bookId.equals(bookId)))
        .get();
  }

  Future<List<AmpBibleVerse>> getAmpChapterVerses(
      int bookId, int chapterNumber) {
    return (select(ampBibleVerses)
          ..where((tbl) => tbl.chapterNumber.equals(chapterNumber))
          ..where((tbl) => tbl.bookId.equals(bookId)))
        .get();
  }

  Future<List<MsgBibleVerse>> getMsgChapterVerses(
      int bookId, int chapterNumber) {
    return (select(msgBibleVerses)
          ..where((tbl) => tbl.chapterNumber.equals(chapterNumber))
          ..where((tbl) => tbl.bookId.equals(bookId)))
        .get();
  }

  Future<List<NivBibleVerse>> getNivChapterVerses(
      int bookId, int chapterNumber) {
    return (select(nivBibleVerses)
          ..where((tbl) => tbl.chapterNumber.equals(chapterNumber))
          ..where((tbl) => tbl.bookId.equals(bookId)))
        .get();
  }

  Stream<List<KjvBibleVerse>> watchKjvChapterVerses(
      int bookId, int chapterNumber) {
    return (select(kjvBibleVerses)
          ..where((tbl) => tbl.chapterNumber.equals(chapterNumber))
          ..where((tbl) => tbl.bookId.equals(bookId)))
        .watch();
  }

  Stream<List<NkjvBibleVerse>> watchNkjvChapterVerses(
      int bookId, int chapterNumber) {
    return (select(nkjvBibleVerses)
          ..where((tbl) => tbl.chapterNumber.equals(chapterNumber))
          ..where((tbl) => tbl.bookId.equals(bookId)))
        .watch();
  }

  Stream<List<AmpBibleVerse>> watchAmpChapterVerses(
      int bookId, int chapterNumber) {
    return (select(ampBibleVerses)
          ..where((tbl) => tbl.chapterNumber.equals(chapterNumber))
          ..where((tbl) => tbl.bookId.equals(bookId)))
        .watch();
  }

  Stream<List<MsgBibleVerse>> watchMsgChapterVerses(
      int bookId, int chapterNumber) {
    return (select(msgBibleVerses)
          ..where((tbl) => tbl.chapterNumber.equals(chapterNumber))
          ..where((tbl) => tbl.bookId.equals(bookId)))
        .watch();
  }

  Stream<List<NivBibleVerse>> watchNivChapterVerses(
      int bookId, int chapterNumber) {
    return (select(nivBibleVerses)
          ..where((tbl) => tbl.chapterNumber.equals(chapterNumber))
          ..where((tbl) => tbl.bookId.equals(bookId)))
        .watch();
  }

  //verse highlighting

  Future highlightNivVerse(Insertable<NivBibleVerse> verse) {
    return (update(nivBibleVerses)).replace(verse);
  }

  Future highlightNkjvVerse(Insertable<NkjvBibleVerse> verse) {
    return (update(nkjvBibleVerses)).replace(verse);
  }

  Future highlightKjvVerse(Insertable<KjvBibleVerse> verse) {
    return (update(kjvBibleVerses)).replace(verse);
  }

  Future highlightMsgVerse(Insertable<MsgBibleVerse> verse) {
    return (update(msgBibleVerses)).replace(verse);
  }

  Future highlightAmpVerse(Insertable<AmpBibleVerse> verse) {
    return (update(ampBibleVerses)).replace(verse);
  }

  //bookmark chapters
  Future bookmarkChapter(Insertable<ChapterBookmark> chapterBookmark) {
    return (into(chapterBookmarks).insert(chapterBookmark));
  }
}
