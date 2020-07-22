
import 'package:flutter/material.dart';

class BibleDataProvider extends InheritedWidget{
 
final TabController chapterVersesTabController;
final Widget child;
final int selectedChapter;

  BibleDataProvider({this.chapterVersesTabController, this.child, this.selectedChapter:1});




  static BibleDataProvider of (BuildContext context){
   return context.dependOnInheritedWidgetOfExactType<BibleDataProvider>();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
  
}