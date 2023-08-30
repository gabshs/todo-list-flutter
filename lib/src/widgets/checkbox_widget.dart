import 'package:flutter/material.dart';
import 'package:todo_app/src/core/ui/constants.dart';

class CheckboxWidget extends StatelessWidget {
  final bool isChecked;

  const CheckboxWidget({
    super.key,
    required this.isChecked,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        color: isChecked ? ColorConstants.purple : Colors.transparent,
        border: Border.all(
          color: isChecked ? ColorConstants.purple : ColorConstants.blue,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: isChecked
          ? const Icon(
              Icons.check,
              size: 14,
              color: Colors.white,
            )
          : null,
    );
  }
}
