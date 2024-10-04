import 'package:flutter/material.dart';

class Transaction {
  final String description;
  final double amount;
  final IconData icon;

  Transaction({
    required this.description,
    required this.amount,
    required this.icon,
  });
}
