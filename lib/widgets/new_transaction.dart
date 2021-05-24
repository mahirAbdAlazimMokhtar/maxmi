import 'package:flutter/material.dart';


class NewTransactoin extends StatelessWidget {
    NewTransactoin(this.addTx);

  final Function addTx;
   final amonuntController = TextEditingController();
    final titleController = TextEditingController();

  @override 
  Widget build(BuildContext context) {
    return Card(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextField(
                        decoration: InputDecoration(labelText: 'Title'),
                        controller: titleController,
                        // onChanged: (value) {
                        //   titleInput = value;
                        // },
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: 'Amount'),
                        controller: amonuntController,
                       // onChanged: (value) => amountInput = value,
                      ),
                      FlatButton(
                        onPressed: () {
                          addTx(titleController.text , double.parse( amonuntController.text));
                        },
                        child: Text('Add Transaction'),
                        textColor: Colors.purple,
                      )
                    ],
                  ),
                ),
              );
  }
}