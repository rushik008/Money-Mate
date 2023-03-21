import 'package:flutter/material.dart';
import 'package:money_mate/utils/constants.dart';

class ExpenseData {
  final String label;
  final String amount;
  final IconData icon;

  ExpenseData({required this.label, required this.amount, required this.icon});
}

class IncomeExpenseCard extends StatelessWidget {
  // creating an instance of ExpenseData class
  final ExpenseData expenseDataInstance;

  const IncomeExpenseCard({super.key, required this.expenseDataInstance});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14.0),
      margin: const EdgeInsets.all(14.0),

      // decoration of container
      decoration: BoxDecoration(
        color:
            expenseDataInstance.label == 'Income' ? primaryGreen : primaryRed,
        borderRadius: const BorderRadius.all(
          Radius.circular(7),
        ),
      ),

      // actual card code
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                expenseDataInstance.label,
                style: const TextStyle(
                  fontSize: 13,
                  color: primaryWhite,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                expenseDataInstance.amount,
                style: const TextStyle(
                  fontSize: 20,
                  color: primaryWhite,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Icon(
            expenseDataInstance.icon,
            color: primaryWhite,
            size: 28,
          ),
        ],
      ),
    );
  }
}
