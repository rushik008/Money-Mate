import 'package:flutter/material.dart';
import 'package:money_mate/pages/add_expense.dart';
import 'package:money_mate/pages/home.dart';
import 'package:money_mate/pages/my_account.dart';
import 'package:money_mate/pages/report.dart';
import 'package:money_mate/utils/constants.dart';

class BNBar extends StatefulWidget {
  const BNBar({super.key});

  @override
  State<BNBar> createState() => _BNBarState();
}

class _BNBarState extends State<BNBar> {
  int _selectedIndex = 0;

  // to navigate to different pages
  final screens = [
    const Home(),
    const Report(),
    const AddExpense(),
    const MyAccount(),
  ];

  // function to update selected index of the pages
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // to preserve the state we can use IndexedStack
      body: IndexedStack(
        index: _selectedIndex,
        children: screens,
      ),

      // Bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Report',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'My Account',
          ),
        ],

        // properties
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: primaryGreen,
        onTap: _onItemTapped,
      ),
    );
  }
}
