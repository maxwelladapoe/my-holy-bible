import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:my_holy_bible/data/bible_moor_database.dart';
import 'package:my_holy_bible/helpers/HexColor.dart';
import 'package:provider/provider.dart';

class HomePageWidget extends StatelessWidget {
  //this is the entire homepage wrap

  @override
  Widget build(BuildContext context) {
    VerseOfDayWidget verseOfDayWidget = VerseOfDayWidget();
    ReadBible readBible = new ReadBible();
    OtherLinks otherLinks = new OtherLinks();
    Container homePageColumn = Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: <Widget>[
          verseOfDayWidget,
          otherLinks,
          readBible
        ],
      ),
    );

    var homePageScaffold = Container(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // centerTitle: true,

        title: Text(
          "My Holy Bible",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Montserrat',
          ),
        ),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: <Widget>[
          new IconButton(
            icon: new Icon(LineAwesomeIcons.search),
            tooltip: 'Search',
            color: Colors.black,
            onPressed: () {
             Navigator.of(context).pushNamed('/search');
//              final database = Provider.of<AppDatabase>(context, listen: false);
//              Navigator.of(context).push(MaterialPageRoute(
//                  builder: (context) => MoorDbViewer(database)));
            },
          ),
        ],
      ),
      body: homePageColumn,
    ));

    return homePageScaffold;
  }

}

class VerseOfDayWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return VerseOfDayState();
  }
}

class VerseOfDayState extends State<VerseOfDayWidget> {
  var verseOfDayBook = "";
  var verseOfDayChapter = "";
  var verseOfDayVerse = "";
  var verseOfDayVerseText = "";

  var verseOfDay;

  var verseOfDayBookId;



  String greeting() {
    var hour = TimeOfDay.now().hour;
    if (hour < 12) {
      return 'Good \nMorning';
    }
    if (hour < 17) {
      return 'Good \nAfternoon';
    }
    return 'Good \nEvening';
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bibleDao = Provider.of<BibleDao>(context);

    var verseOfDayCard = Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 30),
      child: StreamBuilder(
          stream: bibleDao.watchVerseOfDay(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              var verseOfDay = snapshot.data;

              this.verseOfDayVerseText = verseOfDay.verseText;
              this.verseOfDayChapter = verseOfDay.chapterNumber.toString();
              this.verseOfDayVerse = verseOfDay.verseNumber.toString();
              this.verseOfDayBookId = verseOfDay.bookId;
              this.verseOfDayBook = verseOfDay.bookName;

              String verseOfDayTitle = this.verseOfDayBook.toString() +
                  ' ' +
                  this.verseOfDayChapter.toString() +
                  ':' +
                  this.verseOfDayVerse;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                      bottom: 20,
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: Text(greeting(),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 35.0,
                          fontFamily: 'PTSerif',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )),
                  ),
                  Text(
                    "TODAY'S VERSE",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 14.0,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(this.verseOfDayVerseText,
                      softWrap: true,
                      overflow: TextOverflow.clip,
                      maxLines: 10,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'PTSerif',
                        //fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                  SizedBox(height: 20),
                  Text(
                    verseOfDayTitle.toUpperCase(),
                    textAlign: TextAlign.left,
                    softWrap: true,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 14.0,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              );
            } else {
              return Container();
            }
          }),
    );
    return verseOfDayCard;
  }
}

class OtherLinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // use whichever suits your need
        children: <Widget>[
          Container(
              width: 100,
              height: 100,
              child: FlatButton(
                color: HexColor('#3C6997'),
                onPressed: () => {print('hello')},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      LineAwesomeIcons.bookmark,
                      color: Colors.white,
                    ),
                    Text(
                      "Bookmarks",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    )
                  ],
                ),
              )),
          Container(
              width: 100,
              height: 100,
              child: FlatButton(
                color: HexColor('#3C6997'),
                onPressed: () => {
                  Navigator.of(context).pushNamed('/highlighted_verses')
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(LineAwesomeIcons.highlighter, color: Colors.white),
                    Text(
                      "Highlights",
                      style: TextStyle(fontSize: 12.0, color: Colors.white),
                    )
                  ],
                ),
              )),
          Container(
              width: 100,
              height: 100,
              child: FlatButton(
                color: HexColor('#3C6997'),
                onPressed: () => {print('hello')},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(LineAwesomeIcons.sticky_note, color: Colors.white),
                    Text(
                      "Notes",
                      style: TextStyle(fontSize: 12.0, color: Colors.white),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class ReadBible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var readBibleContainer = Expanded(
        child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              margin: EdgeInsets.only(bottom: 50),
              height: 50.0,
              width: MediaQuery.of(context).size.width,
              child: FlatButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(6.0),
                    side: BorderSide(
                      width: 1,
                      color: Colors.orange,
                    )),
                color: Colors.transparent,
                child: Text(
                  "Read Bible".toUpperCase(),
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0),
                ),
                textColor: Colors.orange,
                onPressed: () {
                  Navigator.of(context).pushNamed('/readbiblepage');
                },
              ),
            )));

    return readBibleContainer;
  }
}
