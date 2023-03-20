import 'package:flutter/material.dart';
import 'package:money_mate/bnb.dart';

void main() {
  runApp(
    const MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: BNBar(),
    ),
  );
}
