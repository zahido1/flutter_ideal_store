import 'package:flutter/material.dart';
import 'package:flutter_ideal_store/pages/cart.dart';
import 'package:flutter_ideal_store/pages/chat.dart';
import 'package:flutter_ideal_store/pages/setting.dart';

import '../pages/home.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  List<Widget> pages = const [
    HomePage(),
    ChatPage(),
    CartPage(),
    SettingPage(),
  ];
  int _item = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.comment), label: "Chat"),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_grocery_store), label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Setting"),
          ],
          currentIndex: _item,
          onTap: (value) => {
            setState(() {
              _item = value;
            }),
          },
        ),
        body: pages[_item]);
  }
}
