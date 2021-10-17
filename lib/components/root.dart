import 'package:flutter/material.dart';
import 'package:flutter_study/pages/home_page.dart';
import 'package:flutter_study/pages/layout_page.dart';
import 'package:flutter_study/pages/list_page.dart';

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  _Root createState() => _Root();
}

class _Root extends State<Root> {
  int _selectedIndex = 0;
  final _bottomNavigationBarItems = <BottomNavigationBarItem>[];

  // アイコン情報
  final Map _RootWidgetIcons = {
    'ホーム': {'icon': Icons.home, 'route': const HomePage()},
    'レイアウト': {'icon': Icons.star, 'route': const LayoutPage()},
    'リスト': {'icon': Icons.book, 'route': const ListPage()}
  };

  // アイコン順番
  final List _footerItemOrder = ['ホーム', 'レイアウト', 'リスト'];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < _footerItemOrder.length; i++) {
      _bottomNavigationBarItems.add(_CreateIcon(_footerItemOrder[i]));
    }
  }

  // アイコンを作成する
  BottomNavigationBarItem _CreateIcon(String key) {
    return BottomNavigationBarItem(
      icon: Icon(_RootWidgetIcons[key]['icon']),
      title: Text(key),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _RootWidgetIcons[_footerItemOrder.asMap()[_selectedIndex]]['route'],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: _bottomNavigationBarItems,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
