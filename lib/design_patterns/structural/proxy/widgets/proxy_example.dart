import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/structural/proxy/customer/customer_proxy.dart';
import 'package:flutter_design_patterns/design_patterns/structural/proxy/customer_details_service.dart';
import 'package:flutter_design_patterns/design_patterns/structural/proxy/customer_details_service_proxy.dart';
import 'package:flutter_design_patterns/design_patterns/structural/proxy/widgets/customer_details_dialog.dart';

class ProxyExample extends StatefulWidget {
  const ProxyExample({super.key});

  @override
  State<ProxyExample> createState() => _ProxyExampleState();
}

class _ProxyExampleState extends State<ProxyExample> {
  final _customerDetailsServiceProxy =
      CustomerDetailsServiceProxy(CustomerDetailsService());

  final _customerList = List.generate(10, (_) => CustomerProxy());

  void _showCustomerDetails(CustomerProxy customer) => showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (_) => CustomerDetailsDialog(
          service: _customerDetailsServiceProxy,
          customer: customer,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior(),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(),
        child: Column(
          children: <Widget>[
            Text(
              'Press on the list tile to see more information about the customer',
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            for (var customer in _customerList)
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text(
                      customer.name[0],
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  trailing: const Icon(Icons.info_outline),
                  title: Text(customer.name),
                  onTap: () => _showCustomerDetails(customer),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
