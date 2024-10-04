import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class RecentTransactions extends StatelessWidget {
  final formatter = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ');

  final List<Transaction> transactions = [
    Transaction(
        description: "Grocery Shopping",
        amount: -150000,
        icon: Icons.shopping_cart),
    Transaction(
        description: "Salary", amount: 5000000, icon: Icons.attach_money),
    Transaction(
        description: "Restaurant", amount: -200000, icon: Icons.restaurant),
    Transaction(
        description: "Utilities", amount: -300000, icon: Icons.electric_bolt),
    Transaction(
        description: "Transport", amount: -50000, icon: Icons.directions_bus),
  ];

  RecentTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Recent Transactions",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ...transactions.map(
            (transaction) => ListTile(
              leading: Icon(transaction.icon, color: Colors.blueAccent),
              title: Text(transaction.description),
              subtitle: Text(transaction.amount >= 0 ? "Credit" : "Debit"),
              trailing: Text(
                formatter.format(transaction.amount),
                style: TextStyle(
                  color: transaction.amount >= 0 ? Colors.green : Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
