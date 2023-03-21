import 'package:flutter/material.dart';
import 'package:money_mate/utils/constants.dart';
import 'package:money_mate/widgets/income_expense_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(45.0),
        child: AppBar(
          title: const Text('Home'),
          centerTitle: true,
          backgroundColor: primaryGreen,
          elevation: 0.0,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 8.0,
          ),
          // Row for displaying Income and Expense
          Row(
            children: [
              // calling IncomeExpenseCard for Income
              Expanded(
                child: IncomeExpenseCard(
                  expenseDataInstance: ExpenseData(
                      label: 'Income',
                      amount: '5000',
                      icon: Icons.arrow_upward_rounded),
                ),
              ),
              // calling IncomeExpenseCard for Expense
              Expanded(
                child: IncomeExpenseCard(
                  expenseDataInstance: ExpenseData(
                      label: 'Expense',
                      amount: '-2000',
                      icon: Icons.arrow_downward_rounded),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 2,
          ),

          // container for recent transaction text
          Container(
            margin: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            child: Row(
              children: const [
                Text(
                  'Recent Transaction',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // container for subheading
          Container(
            margin: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 0.0),
            child: Row(
              children: const [
                Text(
                  'Today',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: primaryGrey,
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 0.0),
            child: const Divider(
              height: 5.0,
              thickness: 1.0,
              color: primaryGrey,
            ),
          )
        ],
      ),
    );
  }
}
