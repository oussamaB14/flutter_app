import 'package:flutter/material.dart';
import 'package:flutter_app/src/presentation/settings.dart';
import 'package:flutter_app/src/presentation/shared/app_bar.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  final TextEditingController _taskController = TextEditingController();
  final List<String> Tasks = ["task", "task 1"];
  void _addTask() {
    String task = _taskController.text;
    if (task.isNotEmpty) {
      setState(() {
        Tasks.add(task);
        _taskController.clear();
        print(task);
        print(Tasks);
      });
    }
  }

  void deleteTask(index) {
    setState(() {
      Tasks.removeAt(index);
    });
  }

  Widget? itemBuilder(BuildContext context, int index) {
    return /*Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      const ListTile(),
        Text(
          Tasks[index],
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Divider() EB
      ],
    );*/
        ListTile(
      title: Text(
        Tasks[index],
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      onLongPress: () => deleteTask(index),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SharedAppBar(
          title: "To-Do List", backGroundColor: Colors.green),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: _addTask,
          child: const Icon(Icons.add)),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: _taskController,
              decoration: const InputDecoration(
                  labelText: 'Enter Task', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                itemBuilder: itemBuilder,
                itemCount: Tasks.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
