import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

// ignore: use_key_in_widget_constructors
class UserTransactions extends StatefulWidget {
  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransaction = [
    Transaction(id: 1, title: "Mouse", amount: 300, date: DateTime.now()),
    Transaction(id: 2, title: "Food", amount: 700, date: DateTime.now()),
    Transaction(id: 3, title: "Dinner", amount: 400, date: DateTime.now()),
  ];

  void _addNewTransaction(String title, double amount) {
    final newTx =
        Transaction(title: title, amount: amount, date: DateTime.now(), id: 1);

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[NewTransaction(_addNewTransaction), TransactionList(_userTransaction)],
    );
  }
}
