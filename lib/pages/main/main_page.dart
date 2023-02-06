import 'package:flutter/material.dart';
import 'package:ephphatatv/pages/drawer/drawer_navigator.dart';
import 'package:ephphatatv/pages/main/home_page.dart';
import 'package:ephphatatv/pages/main/explore_page.dart';
import 'package:ephphatatv/pages/main/store_page.dart';
import 'package:ephphatatv/pages/main/give_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _selectedIndex = 0;

  final List<Widget> _pages  = <Widget>[
    const HomePage(),
    const ExplorePage(),
    const StorePage(),
    const GivePage(),
    
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logo.png', height: 48,),
      ),
      endDrawer: const DrawerNavigator(),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
         iconSize: 30,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store_outlined),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_giftcard_outlined),
            label: 'Give',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
