import 'package:flutter/material.dart';
import 'package:todo_app/src/core/ui/constants.dart';

class CounterWidget extends StatelessWidget {
  final String label;
  final int value;
  final Color color;

  const CounterWidget({
    super.key,
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyle(
            color: color,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 8),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 2,
          ),
          decoration: BoxDecoration(
              color: ColorConstants.gray400,
              borderRadius: BorderRadius.circular(999)),
          child: Text(
            value.toString(),
            style: const TextStyle(
              color: ColorConstants.gray200,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
