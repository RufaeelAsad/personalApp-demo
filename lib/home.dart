import 'package:flutter/material.dart';
import 'package:personal_app_demo/transaction.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Transaction> transaction = [
      Transaction(
          id: 'T1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
      Transaction(
          id: 'T2',
          title: 'Weekly Groceries',
          amount: 16.53,
          date: DateTime.now()),
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: Column(
          children: [
            Card(
              child: Text('CHART'),
            ),
            Column(
              children: (transaction as List<Transaction>).map((tx) {
                return Card(
                    child: Row(
                  children: [
                    Container(
                      child: Text(
                        '\$${tx.amount}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.purple),
                      ),
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple, width: 2),
                      ),
                      padding: EdgeInsets.all(10),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tx.title!,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(tx.date.toString(),style: TextStyle(
                          color: Colors.grey
                        ),),
                      ],
                    )
                  ],
                ));
              }).toList(),
            ),
          ],
        ));
  }
}
