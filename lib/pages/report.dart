import 'package:flutter/material.dart';
import 'package:money_mate/utils/constants.dart';

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Report'),
        centerTitle: true,
        backgroundColor: primaryGreen,
      ),
    );
  }
}
