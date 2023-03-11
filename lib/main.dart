import 'package:expense_planner/widgets/user_transaction.dart';
import 'package:flutter/material.dart';

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

// ignore: use_key_in_widget_constructors, must_be_immutable
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Planner'),
      ),
      // ignore: prefer_const_constructors
      body: SingleChildScrollView(
        child: Column(
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
            UserTransactions()
          ],
        ),
      ),
    );
  }
}
