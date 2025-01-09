import 'package:flutter/material.dart';
import 'package:neflex_clone/screen/home_screen.dart';
import 'package:neflex_clone/widget/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TabController? tabController;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BbongFlix",
      theme: ThemeData(
          colorScheme:
              ColorScheme.dark(primary: Colors.black, secondary: Colors.white)),
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
              body: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  HomeScreen(),
                  Container(child: Center(child: Text('search'))),
                  Container(child: Center(child: Text('save'))),
                  Container(child: Center(child: Text('more'))),
                ],
              ),
              bottomNavigationBar: Bottom())),
    );
  }
}
