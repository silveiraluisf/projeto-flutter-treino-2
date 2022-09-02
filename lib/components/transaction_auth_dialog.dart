import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionAuthDialog extends StatelessWidget {
  const TransactionAuthDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Authenticate'),
      content: const TextField(
        obscureText: true,
        maxLength: 4,
        style: TextStyle(fontSize: 48, letterSpacing: 32),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            print('cancel');
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            print('confirm');
          },
          child: const Text('Confirm'),
        )
      ],
    );
  }
}
