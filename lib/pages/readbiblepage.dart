import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:my_holy_bible/data/bible_moor_database.dart';
import 'package:provider/provider.dart';

class ReadBibleWidget extends StatelessWidget {
  //var newTestament, oldTestament;

  // const ReadBibleWidget({Key key, this.data, this.newTestament, this.oldTestament}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(100.0),
                child: AppBar(
                  iconTheme: IconThemeData(
                    color: Colors.black, //change your color here
                  ),
                  automaticallyImplyLeading: Platform.isIOS?true: false,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  title: Text(
                    "My Holy Bible",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  actions: <Widget>[
                    new IconButton(
                      icon: new Icon(LineAwesomeIcons.search),
                      color: Colors.black,
                      tooltip: 'Search',
                      onPressed: () {
                        Navigator.of(context).pushNamed('/search');
                      },
                    ),
                  ],
                  flexibleSpace: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TabBar(
                            indicator: UnderlineTabIndicator(
                                borderSide: BorderSide(
                                  width: 3,
                                  color: Color(0xFF646464),
                                ),
                                insets: EdgeInsets.only(
                                    left: 0, right: 0, bottom: 0)),
                            isScrollable: true,
                            labelPadding: EdgeInsets.only(left: 0, right: 8),
                            tabs: <Widget>[
                              Tab(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Text(
                                    "Old Testament",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Montserrat',
                                    ),
                                  ),
                                ),
                              ),
                              Tab(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Text(
                                    "New Testament",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Montserrat',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
              ),
              body: TabBarView(
                children: [
                  BibleBookWidget('old', context),
                  BibleBookWidget('new', context),
                ],
              ),
            )));
  }
}

class BibleBookWidget extends StatefulWidget {
  final String testament;
  final context;

  BibleBookWidget(this.testament, this.context);

  @override
  State<StatefulWidget> createState() {
    if (this.testament == 'old') {
      return BibleBookState('old');
    }
    return BibleBookState('new');
  }
}

class BibleBookState extends State<BibleBookWidget> {
  List<BibleBook> books = new List();
  String testament;

  BibleBookState(this.testament);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var bibleDao = Provider.of<BibleDao>(context);

    var bBook = FutureBuilder(
        future: bibleDao.getTestamentBooks(this.testament),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            books = snapshot.data;

            return Container(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 5),
                itemCount: books.length,
                itemBuilder: (BuildContext context, int index) {
                  var bookName = books[index].bookName;
                  var numChapters = books[index].numberOfChapters;
                  var textChapters = numChapters.toString() +
                      " " +
                      (numChapters == 1 ? 'Chapter' : 'Chapters');

                  var bookId = books[index].bookId;
                  return
                    Column(

                    children: <Widget>[
                      ListTile(
                        enabled: true,
                        onTap: () {
                          Map<String, dynamic> data = {
                            'bookName': bookName,
                            'bookId': bookId,
                          };

                          Navigator.of(context)
                              .pushNamed('/chapterVerses', arguments: data);
                        },
                        contentPadding: EdgeInsets.only(top: 5, left: 20, right: 20),
                        title: Text(
                          '$bookName',
                          style: TextStyle(
                            fontFamily: 'PTSerif',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          '$textChapters',
                          style: TextStyle(
                            fontFamily: 'PTSerif',
                            color: Colors.black54,
                            fontSize: 13.0,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      Divider(
                        height: 3.0,
                      ),
                    ],
                  );
                },
              ),
            );
          }
          return Container();
        });

    return bBook;
  }

}
