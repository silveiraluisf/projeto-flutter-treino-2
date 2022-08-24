import 'package:flutter/material.dart';
import '../components/progress.dart';
import '../http/webclient.dart';
import '../models/contact.dart';

class TransactionsList extends StatelessWidget {

  TransactionsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Transactions'),
        ),
        body: FutureBuilder<List<Transaction>>(
          future: findAll(),
          builder: (context, snapshot) {
            switch(snapshot.connectionState) {

              case ConnectionState.none:
                break;
              case ConnectionState.waiting:
                return Progress();
              case ConnectionState.active:
                break;
              case ConnectionState.done:
                final List<Transaction>? transactions = snapshot.data;
                return ListView.builder(
                  itemBuilder: (context, index) {
                    final Transaction transaction = transactions![index];
                    return Card(
                      child: ListTile(
                        leading: const Icon(Icons.monetization_on),
                        title: Text(
                          transaction.value.toString(),
                          style: const TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          transaction.contact.accountNumber.toString(),
                          style: const TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: transactions?.length,
                );
            }
            return const Text('Unkown error');
          },
        ));
  }
}

class Transaction {
  final double value;
  final Contact contact;

  Transaction(
    this.value,
    this.contact,
  );

  @override
  String toString() {
    return 'Transaction{value: $value, contact: $contact}';
  }
}
