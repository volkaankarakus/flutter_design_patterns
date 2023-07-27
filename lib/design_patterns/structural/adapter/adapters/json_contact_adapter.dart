import 'dart:convert';
import 'package:flutter_design_patterns/design_patterns/structural/adapter/adapters/icontact_adapter.dart';
import 'package:flutter_design_patterns/design_patterns/structural/adapter/apis/json_contact_api.dart';
import 'package:flutter_design_patterns/design_patterns/structural/adapter/model/contact_model.dart';

class JsonContactsAdapter implements IContactsAdapter {
  const JsonContactsAdapter({
    this.api = const JsonContactsApi(),
  });

  final JsonContactsApi api;

  @override
  List<Contact> getContacts() {
    final contactsJson = api.getContactsJson();
    final contactsList = _parseContactsJson(contactsJson);

    return contactsList;
  }

  List<Contact> _parseContactsJson(String contactsJson) {
    final contactsMap = json.decode(contactsJson) as Map<String, dynamic>;
    final contactsJsonList = contactsMap['contacts'] as List;
    final contactsList = contactsJsonList.map((json) {
      final contactJson = json as Map<String, dynamic>;

      return Contact(
        fullName: contactJson['fullName'] as String,
        email: contactJson['email'] as String,
        favourite: contactJson['favourite'] as bool,
      );
    }).toList();

    return contactsList;
  }
}
