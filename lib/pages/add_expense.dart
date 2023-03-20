import 'package:flutter/material.dart';
import 'package:money_mate/utils/constants.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({super.key});

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add'),
        centerTitle: true,
        backgroundColor: primaryGreen,
      ),
    );
  }
}
