import 'package:flutter/material.dart';
import 'package:flutter_study/components/header.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(title: 'レイアウト'),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 4.0,
        shrinkWrap: true,
        children: List.generate(30, (index) {
          return Container(
            padding: const EdgeInsets.all(8.0),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: GridTile(
              child: const Icon(Icons.star),
              footer: Center(
                child: Text(
                  'star $index',
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
