import 'package:flutter_design_patterns/design_patterns/structural/proxy/customer/customer_details_proxy.dart';
import 'package:flutter_design_patterns/design_patterns/structural/proxy/icustomer_details_service.dart';

class CustomerDetailsServiceProxy implements ICustomerDetailsService {
  final ICustomerDetailsService service;
  CustomerDetailsServiceProxy(this.service);

  final Map<String, CustomerDetailsProxy> customerDetailsCache = {};

  @override
  Future<CustomerDetailsProxy> getCustomerDetails(String id) async {
    if (customerDetailsCache.containsKey(id)) return customerDetailsCache[id]!;

    final customerDetails = await service.getCustomerDetails(id);
    customerDetailsCache[id] = customerDetails;

    return customerDetails;
  }
}
