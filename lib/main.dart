import 'package:flutter/material.dart';
import './transaction.dart';
import 'package:intl/intl.dart';

// ignore: prefer_const_constructors
void main() => (runApp(MyApp()));

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense planner',
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
        title: const Text('Expense Planner'),
      ),
      // ignore: prefer_const_constructors
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        mainAxisAlignment: MainAxisAlignment.start,
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
          // ignore: prefer_const_literals_to_create_immutables
          Card(
            elevation: 5,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  const TextField(
                    decoration: InputDecoration(labelText: 'Title'),
                  ),
                  const TextField(
                    decoration: InputDecoration(labelText: 'Amount'),
                  ),
                  const ElevatedButton(
                      onPressed: null, child: Text('Add transaction'))
                ],
              ),
            ),
          ),
          Column(
              children: transactions.map((tx) {
            return Card(
              child: Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2)),
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      '\$${tx.amount}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
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
          }).toList())
        ],
      ),
    );
  }
}
