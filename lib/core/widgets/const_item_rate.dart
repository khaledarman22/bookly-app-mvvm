import 'package:flutter/material.dart';

class ConstantItemRate extends StatelessWidget {
  const ConstantItemRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.star,
          color: Colors.amber[300],
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text('4.5'),
        const SizedBox(
          width: 9,
        ),
        Text(
          '(2390)',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
