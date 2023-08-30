import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/src/core/ui/constants.dart';
import 'package:todo_app/src/model/task_list.dart';
import 'package:todo_app/src/widgets/counter_widget.dart';
import 'package:todo_app/src/widgets/new_task_form_widget.dart';
import 'package:todo_app/src/widgets/task_widget.dart';

class TodoListApp extends StatefulWidget {
  const TodoListApp({super.key});

  @override
  State<TodoListApp> createState() => _TodoListAppState();
}

class _TodoListAppState extends State<TodoListApp> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    final TaskList taskList = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 60,
        backgroundColor: ColorConstants.gray700,
        surfaceTintColor: Colors.transparent,
        centerTitle: true,
        title: Container(
            margin: const EdgeInsets.only(top: 40, bottom: 20),
            child: Image.asset(ImageConstants.logo)),
      ),
      backgroundColor: ColorConstants.gray600,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 60,
              decoration: const BoxDecoration(color: ColorConstants.gray700),
            ),
            const Positioned(
              top: 30,
              left: 0,
              child: NewTaskFormWidget(),
            ),
            Container(
              margin: const EdgeInsets.only(top: 70),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 55),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CounterWidget(
                        label: 'Criadas',
                        value: taskList.tasksCount,
                        color: ColorConstants.blue,
                      ),
                      CounterWidget(
                        label: 'Concluídas',
                        value: taskList.completedTasksCount,
                        color: ColorConstants.purple,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: height * 0.6,
                    child: ListView.builder(
                      itemCount: taskList.tasks.length,
                      itemBuilder: (context, index) {
                        final task = taskList.tasks[index];
                        return TaskWidget(
                          id: task.id,
                          label: task.label,
                          isActive: task.isChecked,
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
