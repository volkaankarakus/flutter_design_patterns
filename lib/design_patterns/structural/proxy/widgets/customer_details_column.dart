import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/structural/proxy/customer/customer_details_proxy.dart';
import 'customer_info_group.dart';

class CustomerDetailsColumn extends StatelessWidget {
  final CustomerDetailsProxy customerDetails;

  const CustomerDetailsColumn({
    required this.customerDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CustomerInfoGroup(
          label: 'E-mail',
          text: customerDetails.email,
        ),
        CustomerInfoGroup(
          label: 'Position',
          text: customerDetails.position,
        ),
        CustomerInfoGroup(
          label: 'Hobby',
          text: customerDetails.hobby,
        ),
      ],
    );
  }
}
