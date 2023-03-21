import 'package:flutter/material.dart';
import 'package:money_mate/bnb.dart';
import 'package:money_mate/pages/add_expense.dart';
import 'package:money_mate/pages/home.dart';
import 'package:money_mate/pages/my_account.dart';
import 'package:money_mate/pages/report.dart';

void main() {
  runApp(
    MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      initialRoute: '/bnbar',
      routes: {
        '/bnbar': (context) => const BNBar(),
        '/home': (context) => const Home(),
        '/report': (context) => const Report(),
        '/addExpense': (context) => const AddExpense(),
        '/myAccount': (context) => const MyAccount(),
      },
    ),
  );
}
