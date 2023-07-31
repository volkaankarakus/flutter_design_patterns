import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/creational/abstract_factory/abstract_factory.dart';

class AbstractFactoryWidget extends StatelessWidget {
  const AbstractFactoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AbstractFactoryImplementation()
            .buildButton(context: context, text: 'hello', onPressed: () {}),
        const SizedBox(height: 100),
        AbstractFactoryImplementation().buildIndicator(context: context),
        const SizedBox(height: 100),
        AbstractFactoryImplementationWithoutAbstract.buildButton(
          context: context,
          text: 'Without abstract',
          onPressed: () {},
        )
      ],
    );
  }
}
