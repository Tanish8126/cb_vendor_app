import 'package:flutter/material.dart';

import '../../utils/constants/constants.dart';
import '../home_screen/components/billing_screen.dart';
import '../home_screen/home_screen.dart';
import '../menu_items/menu_items_screen.dart';
import '../past_orders/past_order_screen.dart';

class MainScreen extends StatefulWidget {
  static String routeName = './main';
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _page = 0;

  List<Widget> pages = [
    const HomeScreen(),
    const MenuItemsScreen(),
    const PastOrderScreen(),
    BillingScreen()
  ];

  onPageChange(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
              Icons.receipt_long_rounded,
            ),
            label: 'Bill',
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
