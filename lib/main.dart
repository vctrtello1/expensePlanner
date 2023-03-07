import 'package:flutter/material.dart';
import './transaction.dart';

// ignore: prefer_const_constructors
void main() => (runApp(MyApp()));

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(id: 1, title: "Mouse", amount: 300, date: DateTime.now()),
    Transaction(id: 2, title: "Food", amount: 700, date: DateTime.now()),
    Transaction(id: 3, title: "Dinner", amount: 400, date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
      ),
      // ignore: prefer_const_constructors
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          const SizedBox(
            width: double.infinity,
            child: Card(
              elevation: 5,
              child: Text('Chart'),
            ),
          ),
          Column(
              children: transactions.map((tx) {
            return Card(
              child: Text(tx.title),
            );
          }).toList())
        ],
      ),
    );
  }
}
