import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/structural/proxy/customer/customer_details_proxy.dart';
import 'package:flutter_design_patterns/design_patterns/structural/proxy/customer/customer_proxy.dart';
import 'package:flutter_design_patterns/design_patterns/structural/proxy/icustomer_details_service.dart';
import 'package:flutter_design_patterns/platform/platform_button.dart';

import 'customer_details_column.dart';

class CustomerDetailsDialog extends StatefulWidget {
  final CustomerProxy customer;
  final ICustomerDetailsService service;
  const CustomerDetailsDialog({
    required this.customer,
    required this.service,
  });

  @override
  _CustomerDetailsDialogState createState() => _CustomerDetailsDialogState();
}

class _CustomerDetailsDialogState extends State<CustomerDetailsDialog> {
  @override
  void initState() {
    super.initState();

    widget.service.getCustomerDetails(widget.customer.id).then(
          (CustomerDetailsProxy customerDetails) => setState(() {
            widget.customer.details = customerDetails;
          }),
        );
  }

  void _closeDialog() => Navigator.of(context).pop();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.customer.name),
      content: SizedBox(
        height: 200.0,
        child: widget.customer.details == null
            ? Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Colors.black.withOpacity(0.65),
                  ),
                ),
              )
            : CustomerDetailsColumn(
                customerDetails: widget.customer.details!,
              ),
      ),
      actions: <Widget>[
        Visibility(
          visible: widget.customer.details != null,
          child: PlatformButton(
            materialColor: Colors.black,
            materialTextColor: Colors.white,
            onPressed: _closeDialog,
            text: 'Close',
          ),
        ),
      ],
    );
  }
}
