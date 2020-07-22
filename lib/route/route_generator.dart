import 'package:flutter/material.dart';
import 'package:my_holy_bible/pages/allNotes.dart';
import 'package:my_holy_bible/pages/chapterVerses.dart';
import 'package:my_holy_bible/pages/highlightedVerses.dart';
import 'package:my_holy_bible/pages/homepage.dart';
import 'package:my_holy_bible/pages/readbiblepage.dart';
import 'package:my_holy_bible/pages/search.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePageWidget());

      case '/search':
        return MaterialPageRoute(builder: (_) => SearchPageWidget());

      case '/highlighted_verses':
        return MaterialPageRoute(builder: (_) => HighlightedVersesPageWidget());

      case '/all_notes':
        return MaterialPageRoute(builder: (_) => AllNotesPageWidget());

      case '/readbiblepage':
        // Validation of correct data type
        return MaterialPageRoute(
          builder: (_) => ReadBibleWidget(),
        );

      // If args is not of the correct type, return an error page.
      // You can also throw an exception while in development.
      case '/chapterVerses':

        if (args is Map<String, dynamic> ) {
          return MaterialPageRoute(
            builder: (_) => ChapterVersesWidget(
              data: args,
            ),
          );
        }
        
        return _errorRoute();

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('OOPS'),
        ),
        body: Center(
          child: Text('The route provided does not exist'),
        ),
      );
    });
  }
}
