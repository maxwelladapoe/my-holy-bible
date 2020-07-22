import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter_widgets/flutter_widgets.dart';
import 'package:my_holy_bible/data/bible_moor_database.dart';
import 'package:provider/provider.dart';

class SearchPageWidget extends StatefulWidget {
  @override
  SearchWidgetState createState() {
    // TODO: implement createState
    return SearchWidgetState();
  }
}

class SearchWidgetState extends State<SearchPageWidget> {
  ItemScrollController searchResultsController = ItemScrollController();
  String searchString = '';
  bool isSearching = false;

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
        automaticallyImplyLeading: Platform.isIOS? true:false,
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
            padding: EdgeInsets.only(left: 20, right: 20),
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(bottom: 20),
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Search',
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
                  child: TextField(
                    textInputAction: TextInputAction.search,
                    onSubmitted: (value) {
                      setState(() {
                        this.searchString = value;
                      });
                    },
                    style: TextStyle(
                      height: 1.2,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.symmetric(vertical: -5),
                      hintText: 'Enter a search term',
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.greenAccent, width: 1.0),
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 1.0),
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                      ),
                    ),
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
                                child: Text('There are no search items at the moment'),
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
