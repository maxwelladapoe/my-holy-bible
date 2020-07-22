import 'package:flutter/material.dart';
import 'package:my_holy_bible/data/bible_moor_database.dart';
import 'package:my_holy_bible/pages/homepage.dart';
import 'package:my_holy_bible/route/route_generator.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => AppDatabase().bibleDao,
          dispose: (context, db) => db.close(),
        ),


      ],
      child: MaterialApp(
        home: HomePageWidget(),
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
