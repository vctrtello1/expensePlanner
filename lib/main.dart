import './widgets/new_transaction.dart';
import './widgets/transaction_list.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';

// ignore: prefer_const_constructors
void main() => (runApp(MyApp()));

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense planner',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

// ignore: use_key_in_widget_constructors, must_be_immutable
class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> _userTransaction = [];

  void _addNewTransaction(String title, double amount) {
    final newTx =
        Transaction(title: title, amount: amount, date: DateTime.now(), id: 1);

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  void _startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            behavior: HitTestBehavior.opaque,
            child: NewTransaction(
              _addNewTransaction,
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Planner'),
        actions: <Widget>[
          IconButton(
              onPressed: () => _startAddNewTransaction(context),
              icon: const Icon(Icons.add))
        ],
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
          TransactionList(_userTransaction)
        ],
      ),
    );
  }
}
