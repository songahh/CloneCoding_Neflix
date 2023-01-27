import 'package:flutter/material.dart';
import 'package:front/screen/home_screen.dart';
import 'package:front/screen/more_screen.dart';
import 'package:front/widget/bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //TabController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Songflix",
        theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.black,
            accentColor: Colors.white),
        home: DefaultTabController(
            length: 4,
            child: Scaffold(
              body: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [HomeScreen(),
                           Container(child: Center(child: Text('search'))),
                           Container(child: Center(child: Text('save'))),
                           MoreScreen()],
              ),
              bottomNavigationBar: Bottom(),
            )));
  }
}
