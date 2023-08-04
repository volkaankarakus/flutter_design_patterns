import 'package:faker/faker.dart';
import 'package:flutter_design_patterns/design_patterns/structural/proxy/customer/customer_details_proxy.dart';

class CustomerProxy {
  final String id;
  final String name;
  CustomerProxy()
      : id = faker.guid.guid(),
        name = faker.person.name();

  CustomerDetailsProxy? details;
}
