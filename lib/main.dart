import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thoth_script/the_matrix.dart';

void main() {
  runApp(const MyApp());
}

const TextStyle kStyle = TextStyle(
  color: Colors.blue,
  fontWeight: FontWeight.w900,
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: 'Georgia',
          primarySwatch: Colors.red,
          textTheme: const TextTheme(
            bodyText1: TextStyle(fontSize: 30),
            bodyText2: TextStyle(fontSize: 3),
          ).apply(
            fontSizeDelta: 30,
            bodyColor: Colors.black,
            displayColor: Colors.blue,
          ),
        ),
        debugShowCheckedModeBanner: false,
        title: 'Thoth Script',
        home: const ThothScript());
  }
}
