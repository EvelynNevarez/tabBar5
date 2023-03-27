import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'pestaña lab',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
} //miaplicacion

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
} //MyHomePage

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.greenAccent), //Change background color from here
            tabs: [
              Tab(icon: Icon(Icons.discord)),
              Tab(icon: Icon(Icons.accessibility)),
              Tab(icon: Icon(Icons.album)),
              Tab(icon: Icon(Icons.add_to_photos_sharp)),
            ],
          ),
          title: Text('Tabs Evelyn Nevarez'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.discord, size: 350),
            Icon(Icons.accessibility, size: 350),
            Icon(Icons.album, size: 350),
            Icon(Icons.add_to_photos_sharp, size: 350),
          ],
        ),
      ),
    );
  }
} //MyHomePageState
