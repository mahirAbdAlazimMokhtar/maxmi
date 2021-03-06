import 'package:flutter/material.dart';
import '../models/transaction.dart';
import './new_transaction.dart';
import './transaction_list.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
   final List<Transaction> _userTransaction = [
    Transaction(
      id: 't1',
      title: 'New Shose',
      amount: 98.9,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'New bag',
      amount: 60.9,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle , double txAmount ){
    final newTx = Transaction(title: txTitle ,
     amount:  txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransactoin(_addNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}
