import 'package:flutter/material.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Full Name',
              ),
              style: TextStyle(
                fontSize: 24.0
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Account Number',
                ),
                style: TextStyle(
                  fontSize: 24.0
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.0),
                child: SizedBox(
                  width: double.maxFinite,
                    child: ElevatedButton(
                        onPressed: null,
                        child: Text('Create')
                    ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}