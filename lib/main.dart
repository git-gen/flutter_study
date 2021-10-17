import 'package:flutter/material.dart';
import 'components/header.dart';
import 'components/root.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter勉強用アプリ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Scaffold(
        appBar: Header(title: ''),
        body: Center(),
        bottomNavigationBar: Root(),
      ),
    );
  }
}
