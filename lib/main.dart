

import 'package:flutter/material.dart';
import './widgets/user_transaction.dart';




main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  // String amountInput;
  final titleController = TextEditingController();
  // String titleInput;
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter App'),
          ),
          body: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: double.infinity,
                child: Card(
                  child: Text('CHART!'),
                  elevation: 5,
                  color: Colors.blueAccent,
                ),
              ),
              UserTransaction(),
            ],
          )),
    );
  }
}
