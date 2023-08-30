import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/src/core/ui/constants.dart';
import 'package:todo_app/src/model/task_list.dart';

class NewTaskFormWidget extends StatelessWidget {
  const NewTaskFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final labelEC = TextEditingController();

    final TaskList taskList = Provider.of(context, listen: false);

    void handleCreateNewTask() {
      final label = labelEC.text;
      if (label.length < 3) return;

      taskList.createTask(label);
      labelEC.clear();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: width * 0.67,
            child: TextField(
              controller: labelEC,
              onSubmitted: (_) => handleCreateNewTask(),
              style: const TextStyle(
                fontSize: 16,
                color: ColorConstants.gray100,
              ),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(16),
                hintText: 'Adicione uma nova tarefa',
                hintStyle: const TextStyle(
                  fontSize: 16,
                  color: ColorConstants.gray300,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: ColorConstants.purple,
                  ),
                ),
                fillColor: ColorConstants.gray500,
                filled: true,
              ),
            ),
          ),
          const SizedBox(width: 8),
          ElevatedButton(
            onPressed: handleCreateNewTask,
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorConstants.blueDark,
              minimumSize: const Size(52, 52),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            child: const Icon(
              Icons.add_circle_outline,
              size: 24,
              color: ColorConstants.gray100,
            ),
          ),
        ],
      ),
    );
  }
}
