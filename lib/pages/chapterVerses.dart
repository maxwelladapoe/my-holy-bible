import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_widgets/flutter_widgets.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:my_holy_bible/helpers/HexColor.dart';
import 'package:my_holy_bible/models/bibleChapter.dart';
import 'package:provider/provider.dart';
import 'package:share/share.dart';
import 'package:my_holy_bible/data/bible_moor_database.dart';
import 'dart:io' show Platform;

class ChapterVersesWidget extends StatefulWidget {
  final Map<String, dynamic> data;

  const ChapterVersesWidget({Key key, this.data}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ChapterVerseWidgetState(data);
  }
}

class ChapterVerseWidgetState extends State<ChapterVersesWidget>
    with SingleTickerProviderStateMixin {
  Map<String, dynamic> data = new Map();

  int currentSelectedVerseChapterNumber;
  var selectedVerseText,
      selectedVerseChapterNumber,
      selectedVerseBookNumber,
      selectedVerseNumber;

  var selectedVersesList = new List();
  bool isInSelectMode = false;

  ChapterVerseWidgetState(this.data);

  //other widget data
  String appBarTitle = "hello";

  int selectedChapter = 1;
  List<BibleChapter> chaptersList = new List();
  String bibleBookName;
  int bookId = 1;
  int numChapters;
  int chapterNumber = 1;
  int verseNumber = 1;

  //scrollablepositionedlist
  ItemScrollController versesController = ItemScrollController();
  ItemScrollController chaptersController = ItemScrollController();
  TabController chapterVersesTabController;

  ItemPositionsListener vesesItemPositionListener =
      ItemPositionsListener.create();
  int indexOfCurrentItemInView = 0;

  List<String> dropdownValues = ["NIV", "NKJV", "KJV", "MSG", "AMP"];
  String selectedBibleVersion = "NIV";

  var bottomNavButtonItems = [
    BottomNavyBarItem(
      icon: Icon(LineAwesomeIcons.book_open),
      title: Text('References'),
      activeColor: Colors.red,
    ),
    BottomNavyBarItem(
        icon: Icon(LineAwesomeIcons.bookmark),
        title: Text('Bookmark'),
        activeColor: Colors.purpleAccent),
    BottomNavyBarItem(
        icon: Icon(LineAwesomeIcons.highlighter),
        title: Text('Highlight'),
        activeColor: Colors.purpleAccent),
    BottomNavyBarItem(
        icon: Icon(LineAwesomeIcons.bullhorn),
        title: Text('Read Aloud'),
        activeColor: Colors.pink),
    BottomNavyBarItem(
        icon: Icon(LineAwesomeIcons.ellipsis_v),
        title: Text('More'),
        activeColor: Colors.blue),
  ];

  bool showBottomNav = false;

  //initializing flutter tts
  final FlutterTts flutterTts = new FlutterTts();

  initTTS() async {
    if (Platform.isIOS) {}
  }

  int selectedBottomBarItem = 0;

  //verses
  int currentSelectedVerseNumber;
  String currentSelectedVerseTextForTTS;
  String currentSelectedVerseTextForShare;
  var isSelected = true;
  var _selectedIndex;

  void notInSelectMode() {
    setState(() {
      selectedVersesList = new List();
      isInSelectMode = false;
      showBottomNav = false;
      _selectedIndex = null;
    });
  }

  @override
  void initState() {
    bibleBookName = data['bookName'].toString();
    appBarTitle = bibleBookName;
    bookId = data['bookId'];
    chapterNumber = data['chapterNumber'] == null ? 1 : data['chapterNumber'];
    verseNumber = data['verseNumber'] == null ? 1 : data['verseNumber'];
    chapterVersesTabController = new TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  ColorSwatch _tempMainColor;
  Color _tempShadeColor;
  ColorSwatch _mainColor = Colors.blue;
  Color _shadeColor = Colors.blue[800];

  void _openDialog(String title, Widget content) {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(6.0),
          title: Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Montserrat',
            ),
          ),
          content: Container(height: 280, child: content),
          actions: [
            FlatButton(
              color: Colors.red,
              child: Text(
                'CLEAR HIGHLIGHT',
                style: TextStyle(fontFamily: 'Montserrat', color: Colors.white),
              ),
              onPressed: () {
                Navigator.of(context).pop();

                //run the queries to update
                final bibleDao = Provider.of<BibleDao>(context, listen: false);

                if (selectedBibleVersion.toLowerCase() == 'niv') {
                  selectedVersesList.forEach((verse) {
                    //set the colors
                    bibleDao.highlightNivVerse(verse.copyWith(
                        isHighlighted: false, highlightedColor: ''));
                  });
                } else if (selectedBibleVersion.toLowerCase() == 'kjv') {
                  selectedVersesList.forEach((verse) {
                    bibleDao.highlightKjvVerse(verse.copyWith(
                        isHighlighted: false, highlightedColor: ''));
                  });
                } else if (selectedBibleVersion.toLowerCase() == 'nkjv') {
                  selectedVersesList.forEach((verse) {
                    bibleDao.highlightNkjvVerse(verse.copyWith(
                        isHighlighted: false, highlightedColor: ''));
                  });
                } else if (selectedBibleVersion.toLowerCase() == 'amp') {
                  selectedVersesList.forEach((verse) {
                    bibleDao.highlightAmpVerse(verse.copyWith(
                        isHighlighted: false, highlightedColor: ''));
                  });
                } else if (selectedBibleVersion.toLowerCase() == 'msg') {
                  selectedVersesList.forEach((verse) {
                    bibleDao.highlightMsgVerse(verse.copyWith(
                        isHighlighted: false, highlightedColor: ''));
                  });
                }

                this.notInSelectMode();
              },
            ),
//            FlatButton(
//              child: Text(
//                'CANCEL',
//                style: TextStyle(
//                  fontFamily: 'Montserrat',
//                ),
//              ),
//              onPressed: Navigator
//                  .of(context)
//                  .pop,
//            ),
            FlatButton(
              color: Colors.green,
              child: Text(
                'SUBMIT',
                style: TextStyle(fontFamily: 'Montserrat', color: Colors.white),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                setState(() => _mainColor = _tempMainColor);

                //run the queries to update
                final bibleDao = Provider.of<BibleDao>(context, listen: false);

                if (selectedBibleVersion.toLowerCase() == 'niv') {
                  selectedVersesList.forEach((verse) {
                    //set the colors
                    bibleDao.highlightNivVerse(verse.copyWith(
                        isHighlighted: true,
                        highlightedColor:
                            '#${_mainColor.value.toRadixString(16)}'));
                  });
                } else if (selectedBibleVersion.toLowerCase() == 'kjv') {
                  selectedVersesList.forEach((verse) {
                    bibleDao.highlightKjvVerse(verse.copyWith(
                        isHighlighted: true,
                        highlightedColor:
                            '#${_mainColor.value.toRadixString(16)}'));
                  });
                } else if (selectedBibleVersion.toLowerCase() == 'nkjv') {
                  selectedVersesList.forEach((verse) {
                    bibleDao.highlightNkjvVerse(verse.copyWith(
                        isHighlighted: true,
                        highlightedColor:
                            '#${_mainColor.value.toRadixString(16)}'));
                  });
                } else if (selectedBibleVersion.toLowerCase() == 'amp') {
                  selectedVersesList.forEach((verse) {
                    bibleDao.highlightAmpVerse(verse.copyWith(
                        isHighlighted: true,
                        highlightedColor:
                            '#${_mainColor.value.toRadixString(16)}'));
                  });
                } else if (selectedBibleVersion.toLowerCase() == 'msg') {
                  selectedVersesList.forEach((verse) {
                    bibleDao.highlightMsgVerse(verse.copyWith(
                        isHighlighted: true,
                        highlightedColor:
                            '#${_mainColor.value.toRadixString(16)}'));
                  });
                }

                this.notInSelectMode();
              },
            ),
          ],
        );
      },
    );
  }

  void _openColorPicker() async {
    _openDialog(
      "Select a Color",
      MaterialColorPicker(
        circleSize: 35,
        spacing: 20,
        allowShades: false,
        selectedColor: _mainColor,
        onColorChange: (color) => setState(() => _tempShadeColor = color),
        onMainColorChange: (color) => setState(() => _tempMainColor = color),
        colors: [
          Colors.redAccent,
          Colors.red,
          Colors.pink,
          Colors.purple,
          Colors.deepPurple,
          Colors.indigo,
          Colors.blue,
          Colors.lightBlue,
          Colors.cyan,
          Colors.teal,
          Colors.green,
          Colors.lightGreen,
          Colors.lime,
          Colors.yellow,
          Colors.amber,
          Colors.orange,
          Colors.deepOrange,
          Colors.brown,
          Colors.grey,
          Colors.blueGrey
        ],
        onBack: () => print("Back button pressed"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var bibleDao = Provider.of<BibleDao>(context);

    DropdownButton versionsDropdown = DropdownButton(
      elevation: 0,
      style: TextStyle(
        color: Colors.black,
        fontFamily: 'Montserrat',
      ),
      items: dropdownValues
          .map((value) => DropdownMenuItem(
                child: Text(
                  value,
                ),
                value: value,
              ))
          .toList(),
      onChanged: (value) {
        this.notInSelectMode();

        setState(() {
          selectedBibleVersion = value;
        });
      },
      isExpanded: false,
      value: selectedBibleVersion,
    );

    var dataSet;

    if (selectedBibleVersion.toLowerCase() == 'niv') {
      dataSet = bibleDao.watchNivChapterVerses(bookId, chapterNumber);
    } else if (selectedBibleVersion.toLowerCase() == 'kjv') {
      dataSet = bibleDao.watchKjvChapterVerses(bookId, chapterNumber);
    } else if (selectedBibleVersion.toLowerCase() == 'nkjv') {
      dataSet = bibleDao.watchNkjvChapterVerses(bookId, chapterNumber);
    } else if (selectedBibleVersion.toLowerCase() == 'amp') {
      dataSet = bibleDao.watchAmpChapterVerses(bookId, chapterNumber);
    } else if (selectedBibleVersion.toLowerCase() == 'msg') {
      dataSet = bibleDao.watchMsgChapterVerses(bookId, chapterNumber);
    }

    TabBarView tabBarView = TabBarView(
      controller: chapterVersesTabController,
      children: [
        FutureBuilder(
            future: bibleDao.getBibleBook(bookId),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                var bibleBook = snapshot.data;
                var numChapters = bibleBook.numberOfChapters;

                for (var i = 1; i <= numChapters; i++) {
                  chaptersList.add(BibleChapter.map(this.bookId, i, "$i"));
                }

                return Container(
                    width: MediaQuery.of(context).size.width > 900 ? 300 : 45,
                    decoration: new BoxDecoration(),
                    child: ScrollablePositionedList.builder(
                      padding: EdgeInsets.only(top: 5),
                      itemScrollController: chaptersController,
                      itemCount: chaptersList.length,
                      itemBuilder: (BuildContext context, int index) {
                        if (chaptersList.isNotEmpty) {
                          var chapterNumberName;
                          chapterNumberName =
                              'Chapter ' + chaptersList[index].chapterNumber;

                          return Column(
                            children: <Widget>[
                              Container(
                                child: ListTile(
                                  enabled: true,
                                  onTap: () {
                                    setState(() {
                                      selectedChapter = index + 1;
                                      chapterNumber = index + 1;
                                      indexOfCurrentItemInView = index;
                                      chapterVersesTabController.index = 1;
                                    });
                                  },
                                  contentPadding: EdgeInsets.only(
                                      top: 5, left: 20, right: 20),
                                  title: Text(
                                    '$chapterNumberName',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontFamily: 'PTSerif',
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: chapterNumber == index + 1
                                          ? Colors.orangeAccent
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                height: 3.0,
                              ),
                            ],
                          );
                        } else {
                          return Column();
                        }
                      },
                    ));
              }

              return Container();
            }),
        StreamBuilder(
            stream: dataSet,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                var allVerses = snapshot.data;
                return Container(
                  child: NotificationListener<ScrollUpdateNotification>(
                    child: ScrollablePositionedList.separated(
                      //initialScrollIndex: data['chapterNumber']==null? 0 : data['chapterNumber'],

                      itemPositionsListener: vesesItemPositionListener,
                      itemScrollController: versesController,
                      itemCount: allVerses.length,
                      itemBuilder: (BuildContext context, int index) {
                        if (allVerses.isNotEmpty) {
                          var verse = allVerses[index];

                          //this code block is to allow the change in color when the text is highlighted


                          var color = HexColor(verse.highlightedColor == null
                              ? '#ffffff'
                              : verse.highlightedColor);


                          final brightness =
                              ThemeData.estimateBrightnessForColor(color);
                          final textColor = brightness == Brightness.light
                              ? Colors.black
                              : Colors.white;

                          //this is the end of the code for changing the highlighted text color

                          return Column(
                            children: <Widget>[
                              Container(
                                color: selectedVersesList.contains(verse)
                                    ? Colors.orange
                                    : Colors.transparent,
                                child: ListTile(
                                  title: RichText(
                                      text: TextSpan(
                                          text: '',
                                          style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 16.0,
                                            height: 1.5,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                          ),
                                          children: [
                                        TextSpan(
                                            text: (index + 1).toString() + ' ',
                                            style: TextStyle(
                                              fontFamily: 'PTSerif',
                                              fontSize: 12.0,
                                              height: 0.7,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            )),
                                        TextSpan(
                                            text: allVerses[index].verseText,
                                            style: TextStyle(
                                              color: textColor,
                                              backgroundColor: verse
                                                          .isHighlighted ==
                                                      true
                                                  ? HexColor(
                                                      verse.highlightedColor)
                                                  : Colors.transparent,
                                            ))
                                      ])),
                                  onLongPress: () {
                                    setState(() {
                                      //bring up the bottom nav
                                      showBottomNav = true;
                                      selectedVerseBookNumber = verse.bookId;
                                      selectedVerseChapterNumber =
                                          verse.chapterNumber;
                                      selectedVerseNumber = verse.verseNumber;
                                      selectedVerseText = verse.verseText;

                                      //change the background color of the long pressed item

                                      //go into multiselect mode
                                      isInSelectMode = true;
                                      if (!selectedVersesList.contains(verse)) {
                                        selectedVersesList.add(verse);
                                      }
                                    });
                                  },
                                  onTap: () {
                                    setState(() {
                                      if (isInSelectMode &&
                                          selectedVersesList.length >= 1) {
                                        //that means i can add a verse

                                        if (selectedVersesList
                                            .contains(verse)) {
                                          //if the list contains the verse
                                          selectedVersesList.remove(verse);

                                          if (selectedVersesList.length == 0) {
                                            //if everything is removed and there is no verse run the not in select mode function
                                            this.notInSelectMode();
                                          }
                                        } else {
                                          //if the list does not contain the verse then add it
                                          selectedVersesList.add(verse);
                                        }
                                      }
                                    });
                                  },
                                ),
                              ),
                            ],
                          );
                        } else {
                          print("there are no verses");
                          return Column();
                        }
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return Divider(
                          height: 1.0,
                        );
                      },
                    ),
                    onNotification: (notification) {
                      //TODO: fix this portion of the code. the item below keeps running multiple times

                      if (indexOfCurrentItemInView != chapterNumber) {
                        // chaptersController.scrollTo(
                        //     index: indexOfCurrentItemInView,
                        //     duration: Duration(milliseconds: 300));
                      }

                      return true;
                    },
                  ),
                );
              }
              return Container();
            }),
      ],
    );

    readAloud() async {
      await flutterTts.setLanguage("en-US");
      await flutterTts.setPitch(1);

      String speakString;
      var verseNumbers = [];
      var verseTexts = {};
      var verseString, verseTextFullString = '';

      selectedVersesList.forEach((verse) {
        verseNumbers.add(verse.verseNumber);
        verseTexts.putIfAbsent(verse.verseNumber, () => verse.verseText);
      });

      if (verseNumbers.length > 1) {
        verseNumbers.sort();

        //Todo:check if the number is consecutive
        // they are then use to else use end

        verseString = verseNumbers[0].toString() +
            ' to ' +
            verseNumbers[verseNumbers.length - 1].toString();

        verseNumbers.forEach((element) {
          verseTextFullString += verseTexts[element].toString() + ' ';
        });
      } else {
        verseString = verseNumbers[0].toString();
        verseTextFullString = verseTexts[verseNumbers[0]].toString();
      }

      speakString =
          "$bibleBookName chapter $chapterNumber verse $verseString. $verseTextFullString Amen";

      await flutterTts.speak(speakString);

      this.notInSelectMode();
    }

    BottomNavyBar bottomNavBar = BottomNavyBar(
      selectedIndex: _selectedIndex,
      showElevation: true, // use this to remove appBar's elevation
      onItemSelected: (index) => setState(() {
        _selectedIndex = index;

        switch (index) {
          case 0:
            {
              //go to cross references page

              break;
            }

          case 1:
            {
              //bookmark

              break;
            }
          case 2:
            {
              //highlight
              _openColorPicker();
              break;
            }
          case 3:
            {
              //read aloud
              readAloud();
              break;
            }
          case 4:
            {
              //copy

              break;
            }
        }
      }),
      items: bottomNavButtonItems,
    );
    return ValueListenableBuilder(
      builder: (BuildContext context, positions, Widget child) {
        int indexOfVersesChapterInTopView;
        int max;
        if (positions.isNotEmpty) {
          // Determine the first visible item by finding the item with the
          // smallest trailing edge that is greater than 0.  i.e. the first
          // item whose trailing edge in visible in the viewport.
          indexOfVersesChapterInTopView = positions
              .where((ItemPosition position) => position.itemTrailingEdge > 0)
              .reduce((ItemPosition min, ItemPosition position) =>
                  position.itemTrailingEdge < min.itemTrailingEdge
                      ? position
                      : min)
              .index;
          // Determine the last visible item by finding the item with the
          // greatest leading edge that is less than 1.  i.e. the last
          // item whose leading edge in visible in the viewport.
          max = positions
              .where((ItemPosition position) => position.itemLeadingEdge < 1)
              .reduce((ItemPosition max, ItemPosition position) =>
                  position.itemLeadingEdge > max.itemLeadingEdge
                      ? position
                      : max)
              .index;
          //set the index of the current item in view
          indexOfCurrentItemInView = indexOfVersesChapterInTopView;
          verseNumber = indexOfVersesChapterInTopView + 1;
        }

        //final return of the container
        return Container(
          child: DefaultTabController(
            length: 2,
            child: WillPopScope(
              child: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(100.0),
                  child: AppBar(
                    iconTheme: IconThemeData(
                      color: Colors.black, //change your color here
                    ),
                    automaticallyImplyLeading: Platform.isIOS ? true : false,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    actions: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: versionsDropdown,
                      ),
                      new IconButton(
                        icon: new Icon(LineAwesomeIcons.search),
                        color: Colors.black,
                        tooltip: 'Search',
                        onPressed: () {
                          Navigator.of(context).pushNamed('/search');
                        },
                      ),
                    ],
                    title: Text(
                      "$appBarTitle $chapterNumber " +
                          (verseNumber == 1 ? "" : ": $verseNumber"),
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    flexibleSpace: Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            TabBar(
                              controller: chapterVersesTabController,
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
                                      "Chapter",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Montserrat',
                                      ),
                                    ),
                                  ),
                                ),
                                Tab(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Text(
                                      "Verses",
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
                body: tabBarView,
                //display the bottom nav if the user long presses else just show the SizedBox.shrink
                bottomNavigationBar:
                    showBottomNav ? bottomNavBar : SizedBox.shrink(),
              ),
              onWillPop: () async {
                if (chapterVersesTabController.index == 1) {
                  chapterVersesTabController.index = 0;
                  return false;
                } else {
                  //this has been put here and not in the if condition because it being here allows users to be in select mode even when they change chapters
                  notInSelectMode();
                  return true;
                }
              },
            ),
          ),
        );
      },
      valueListenable: vesesItemPositionListener.itemPositions,
    );
  }
}
