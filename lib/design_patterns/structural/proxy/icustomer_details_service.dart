import 'package:flutter_design_patterns/design_patterns/structural/proxy/customer/customer_details_proxy.dart';

abstract interface class ICustomerDetailsService {
  Future<CustomerDetailsProxy> getCustomerDetails(String id);
}
