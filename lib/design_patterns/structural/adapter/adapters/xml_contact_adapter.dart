import 'package:flutter_design_patterns/design_patterns/structural/adapter/adapters/icontact_adapter.dart';
import 'package:flutter_design_patterns/design_patterns/structural/adapter/apis/xml_contact_api.dart';
import 'package:flutter_design_patterns/design_patterns/structural/adapter/model/contact_model.dart';
import 'package:xml/xml.dart';

class XmlContactsAdapter implements IContactsAdapter {
  const XmlContactsAdapter({
    this.api = const XmlContactsApi(),
  });

  final XmlContactsApi api;

  @override
  List<Contact> getContacts() {
    final contactsXml = api.getContactsXml();
    final contactsList = _parseContactsXml(contactsXml);

    return contactsList;
  }

  List<Contact> _parseContactsXml(String contactsXml) {
    final xmlDocument = XmlDocument.parse(contactsXml);
    final contactsList = <Contact>[];

    for (final xmlElement in xmlDocument.findAllElements('contact')) {
      final fullName = xmlElement.findElements('fullname').single.innerText;
      final email = xmlElement.findElements('email').single.innerText;
      final favouriteString =
          xmlElement.findElements('favourite').single.innerText;
      final favourite = favouriteString.toLowerCase() == 'true';

      contactsList.add(
        Contact(
          fullName: fullName,
          email: email,
          favourite: favourite,
        ),
      );
    }

    return contactsList;
  }
}
