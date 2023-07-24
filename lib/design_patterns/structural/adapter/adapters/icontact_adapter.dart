import 'package:flutter_design_patterns/design_patterns/structural/adapter/model/contact_model.dart';

abstract interface class IContactsAdapter {
  List<Contact> getContacts();
}