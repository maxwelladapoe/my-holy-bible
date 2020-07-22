import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';
import 'package:flutter_widgets/flutter_widgets.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:my_holy_bible/data/bible_moor_database.dart';
import 'package:provider/provider.dart';

class AllNotesPageWidget extends StatefulWidget {
  @override
  NotesWidgetState createState() {
    // TODO: implement createState
    return NotesWidgetState();
  }
}

class NotesWidgetState extends State<AllNotesPageWidget> {
  ItemScrollController searchResultsController = ItemScrollController();
  String searchString = '';
  bool isSearching = false;

  ColorSwatch _tempMainColor;
  Color _tempShadeColor;
  ColorSwatch _mainColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final bibleDao = Provider.of<BibleDao>(context);
    var searchResultsQuery =
        bibleDao.searchNivVerseGenerated(this.searchString).watch();
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        automaticallyImplyLeading: Platform.isIOS ? true : false,
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
        actions: <Widget>[],
      ),
      body: Column(
        children: <Widget>[
          Container(

            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(bottom: 20),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Highlighted Verses',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20.0,
                        height: 1.5,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Container(
                  height: 100,

                  width: MediaQuery.of(context).size.width,
                  child: MaterialColorPicker(
                    circleSize: 18,
                    iconSelected: IconData(0x00),
                    allowShades: false,
                    elevation: 0,
                    spacing: 12,
                    selectedColor: _mainColor,
                    onColorChange: (color) =>
                        setState(() => _tempShadeColor = color),
                    onMainColorChange: (color) =>
                        setState(() => _tempMainColor = color),
                    onBack: () => print("Back button pressed"),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: StreamBuilder(
                stream: searchResultsQuery,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    var searchResults = snapshot.data;
                    if (true) {
                      //if the search results are not null that means there is data

                      return Container(
                        child: ScrollablePositionedList.separated(
                          itemScrollController: searchResultsController,
                          itemCount: searchResults.length,
                          itemBuilder: (BuildContext context, int index) {
                            if (searchResults.isNotEmpty) {
                              var verse = searchResults[index];
                              return Column(
                                children: <Widget>[
                                  Container(
                                    child: ListTile(
                                      title: Text(searchResults[index].bcvName,
                                          style: TextStyle(
                                            fontFamily: 'PTSerif',
                                            fontSize: 20.0,
                                            height: 2,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          )),
                                      subtitle: RichText(
                                          text: TextSpan(
                                        text: verse.verseText,
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 16.0,
                                          height: 1.5,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black,
                                        ),
                                      )),
                                      onLongPress: () {
                                        print('hello');
                                      },
                                      onTap: () {
                                        setState(() {
                                          print('1 tap');
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                child: Text(
                                    'There are no search items at the moment'),
                              );
                            }
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return Divider(
                              height: 1.0,
                            );
                          },
                        ),
                      );
                    }
                  }
                  return Container();
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
