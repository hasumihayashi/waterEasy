import 'package:flutter/material.dart';

import './pages/welcome.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        // theme: new ThemeData(
        //    primarySwatch: Colors.green[700],
        //    accentColor: Colors.blue[400],
        //  ),
        home: Scaffold(
          body: WelcomePage(),
        ));
  }
}
