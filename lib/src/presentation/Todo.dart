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
    return ListTile(
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
//Provider implementation 
/*
import 'package:flutter/material.dart';
import 'package:flutter_app/src/presentation/settings.dart';
import 'package:flutter_app/src/presentation/shared/app_bar.dart';
import 'package:provider/provider.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  final TextEditingController _taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodoModel(),
      child: Scaffold(
        appBar: const SharedAppBar(
            title: "To-Do List", backGroundColor: Colors.green),
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: () {
                final todoModel =
                    Provider.of<TodoModel>(context, listen: false);
                todoModel.addTask(_taskController.text);
                _taskController.clear();
              },
              child: const Icon(Icons.add),
            );
          },
        ),
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
                child: Consumer<TodoModel>(
                  builder: (context, todoModel, child) {
                    return ListView.builder(
                      itemCount: todoModel.tasks.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                            todoModel.tasks[index],
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          onLongPress: () {
                            todoModel.deleteTask(index);
                          },
                        );
                      },
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TodoModel with ChangeNotifier {
  final List<String> _tasks = [];

  List<String> get tasks => _tasks;

  void addTask(String task) {
    _tasks.add(task);
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  int get taskCount => _tasks.length;
}

*/ 