import 'package:flutter/material.dart';
import 'package:flutter_study/components/header.dart';
import 'package:flutter_study/pages/layout_page.dart';
import 'package:flutter_study/pages/list_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(title: 'ホーム'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'スタック遷移',
              style: TextStyle(fontSize: 24),
            ),
            ButtonTheme(
              minWidth: 200,
              child: RaisedButton(
                child: const Text('レイアウト'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LayoutPage()),
                  );
                },
              ),
            ),
            ButtonTheme(
              minWidth: 200,
              child: RaisedButton(
                child: const Text('リスト'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ListPage()),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
