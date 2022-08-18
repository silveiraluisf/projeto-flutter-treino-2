import 'package:flutter/material.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: ListView(
        children: const <Widget>[
          Card(
            child: ListTile(
              title: Text(
                'Luís',
                style: TextStyle(fontSize: 20.0),
              ),
              subtitle: Text(
                '1000',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
