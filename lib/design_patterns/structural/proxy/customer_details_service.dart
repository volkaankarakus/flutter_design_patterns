import 'package:faker/faker.dart';
import 'package:flutter_design_patterns/design_patterns/structural/proxy/customer/customer_details_proxy.dart';
import 'package:flutter_design_patterns/design_patterns/structural/proxy/icustomer_details_service.dart';

class CustomerDetailsService implements ICustomerDetailsService {
  const CustomerDetailsService();

  @override
  Future<CustomerDetailsProxy> getCustomerDetails(String id) => Future.delayed(
      const Duration(seconds: 2),
      () => CustomerDetailsProxy(
            customerId: id,
            email: faker.internet.email(),
            hobby: faker.sport.name(),
            position: faker.job.title(),
          ));
}
