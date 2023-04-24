import 'package:cb_vendor_app/screens/home_screen/home_screen.dart';
import 'package:cb_vendor_app/screens/menu_items/menu_items_screen.dart';
import 'package:cb_vendor_app/screens/past_orders/past_order_screen.dart';
import 'package:cb_vendor_app/screens/sales_data/sales_data_screen.dart';
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

  List<Widget> pages = [
    const HomeScreen(),
    const MenuItemsScreen(),
    const PastOrderScreen(),
    const SalesDataScreen()
  ];

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
              Icons.home,
            ),
            label: 'Past Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Menu Items',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.money,
            ),
            label: 'PayOut',
          ),
        ],
      ),
      body: pages[_page],
    );
  }
}
