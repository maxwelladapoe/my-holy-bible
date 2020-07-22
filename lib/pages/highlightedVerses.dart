import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';
import 'package:flutter_widgets/flutter_widgets.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:my_holy_bible/data/bible_moor_database.dart';
import 'package:my_holy_bible/helpers/HexColor.dart';
import 'package:provider/provider.dart';

class HighlightedVersesPageWidget extends StatefulWidget {
  @override
  HighlightedVersesWidgetState createState() {
    //implement createState
    return HighlightedVersesWidgetState();
  }
}

class HighlightedVersesWidgetState extends State<HighlightedVersesPageWidget> {
  ItemScrollController highlightedVersesResultsController =
      ItemScrollController();
  String searchString = '';
  bool isSearching = false;

  ColorSwatch _tempMainColor;
  Color _tempShadeColor;
  ColorSwatch _mainColor;

  @override
  Widget build(BuildContext context) {
    final bibleDao = Provider.of<BibleDao>(context);

    var highlightedVersesResultQuery = bibleDao
        .getHighlightedVersesGenerated(_mainColor == null
            ? '%#%'
            : '#${_mainColor.value.toRadixString(16)}')
        .watch();

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
            margin: EdgeInsets.only(bottom: 10),
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
                  height: 90,
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
                        setState(() => _tempMainColor = _mainColor = color),
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
                  ),
                ),
                _mainColor != null
                    ? Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        height: 30,
                        margin: EdgeInsets.only(bottom: 10),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: <Widget>[
                            FlatButton(
                              child: Text('Clear'),
                              color: _mainColor,
                              onPressed: () {
                                setState(() {
                                  _mainColor = null;
                                });
                              },
                            )
                          ],
                        ),
                      )
                    : Container()
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: StreamBuilder(
                stream: highlightedVersesResultQuery,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    var highlightedResults = snapshot.data;
                    if (true) {
                      //if the search results are not null that means there is data

                      return Container(
                        child: ScrollablePositionedList.separated(
                          itemScrollController:
                              highlightedVersesResultsController,
                          itemCount: highlightedResults.length,
                          itemBuilder: (BuildContext context, int index) {
                            if (highlightedResults.isNotEmpty) {
                              var verse = highlightedResults[index];

                              //this code block is to allow the change in color when the text is highlighted

                              var color = HexColor(
                                  verse.highlightedColor == null
                                      ? '#ffffff'
                                      : verse.highlightedColor);

                              final brightness =
                                  ThemeData.estimateBrightnessForColor(color);
                              final textColor = brightness == Brightness.light
                                  ? Colors.black
                                  : Colors.white;

                              return Column(
                                children: <Widget>[
                                  Container(
                                    child: ListTile(
                                      title: Text(
                                          "${highlightedResults[index].bcvName} (${highlightedResults[index].version})",
                                          style: TextStyle(
                                            fontFamily: 'PTSerif',
                                            fontSize: 18.0,
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
                                          color: textColor,
                                          backgroundColor: verse
                                                      .isHighlighted ==
                                                  true
                                              ? HexColor(verse.highlightedColor)
                                              : Colors.transparent,
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
                                padding: EdgeInsets.only(left: 18, right: 18),
                                child: Text(
                                    'There are no verses highlighted with the current selected color',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                  ),
                                ),
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
