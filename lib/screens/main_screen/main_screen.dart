import 'package:flutter/material.dart';

import '../../utils/constants/constants.dart';

class MainScreen extends StatefulWidget {
  static String routeName = './main';
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _page = 0;

  List<Widget> pages = [];

  onPageChange(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kBlack,
        unselectedItemColor: kBlack,
        type: BottomNavigationBarType.fixed,
        backgroundColor: kWhite,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedFontSize: getProportionateScreenHeight(14),
        selectedFontSize: getProportionateScreenHeight(16),
        onTap: onPageChange,
        currentIndex: _page,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: 'Following',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_rounded,
            ),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message_rounded,
            ),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.man_4_outlined,
            ),
            label: 'Browse',
          ),
        ],
      ),
      body: pages[_page],
    );
  }
}
