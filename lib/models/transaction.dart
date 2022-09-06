import 'contact.dart';

class Transaction {
  final double value;
  final Contact contact;
  final String id;

  Transaction(
  this.value,
  this.contact,
  this.id
  );

  Transaction.fromJson(Map<String, dynamic> json)
      :
        id = json["id"],
        value = json['value'],
        contact = Contact.fromJson(json['contact']);

  Map<String, dynamic> toJson() =>
      {
        'value': value,
        'contact': contact.toJson(),
      };

  @override
  String toString() {
    return 'Transaction{value: $value, contact: $contact}';
  }
}