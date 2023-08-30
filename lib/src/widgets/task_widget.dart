import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/src/core/ui/constants.dart';
import 'package:todo_app/src/model/task_list.dart';
import 'package:todo_app/src/widgets/checkbox_widget.dart';

class TaskWidget extends StatelessWidget {
  final int id;
  final String label;
  final bool isActive;

  const TaskWidget({
    super.key,
    required this.id,
    required this.label,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    final TaskList taskList = Provider.of(context);

    void handleClickTask() {
      taskList.checkTask(id);
    }

    void handleDeleteTask() {
      taskList.deleteTask(id);
    }

    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: InkWell(
        onTap: handleClickTask,
        borderRadius: BorderRadius.circular(8),
        child: Card(
          color: ColorConstants.gray500,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CheckboxWidget(isChecked: isActive),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    label,
                    style: TextStyle(
                      color: isActive
                          ? ColorConstants.gray300
                          : ColorConstants.gray100,
                      fontSize: 14,
                      decoration: isActive ? TextDecoration.lineThrough : null,
                      decorationColor: ColorConstants.gray300,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                    onPressed: handleDeleteTask,
                    icon: const Icon(
                      Icons.delete_outline,
                      size: 24,
                      color: ColorConstants.danger,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
