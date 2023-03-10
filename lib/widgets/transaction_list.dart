import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({super.key});

  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransaction = [
    Transaction(id: 1, title: "Mouse", amount: 300, date: DateTime.now()),
    Transaction(id: 2, title: "Food", amount: 700, date: DateTime.now()),
    Transaction(id: 3, title: "Dinner", amount: 400, date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
        children: _userTransaction.map((tx) {
      return Card(
        child: Row(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2)),
              padding: const EdgeInsets.all(10),
              child: Text(
                '\$${tx.amount}',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  tx.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Text(DateFormat('MM-dd-yyyy').format(tx.date))
              ],
            )
          ],
        ),
      );
    }).toList());
  }
}
