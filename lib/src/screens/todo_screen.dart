import 'package:cubit/src/bloc/todo.dart';
import 'package:cubit/src/models/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoScreen extends StatelessWidget {
  final controller = TextEditingController();
  String? title = null;

  TodoScreen({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    var todoCubit = BlocProvider.of<TodoCubit>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: BlocBuilder<TodoCubit, Todo>(
        builder: (context, todo) {
          return Column(
            children: [
              Expanded(
                child: ListView(
                  children: todo.tasks
                      .map((e) => ListTile(
                            title: Text(e.text),
                            trailing: IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () {
                                todoCubit.remove(e);
                              },
                            ),
                          ))
                      .toList(),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 8.0, bottom: 8.0, right: 4.0, left: 4.0),
                      child: TextField(
                        controller: controller,
                        decoration: InputDecoration(
                          fillColor: Colors.grey[200],
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 4.0, left: 4.0),
                    child: TextButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        shadowColor: Colors.blueAccent,
                        elevation: 3,
                      ),
                      onPressed: () {
                        todoCubit.add(Task(text: controller.text));
                        controller.clear();
                      },
                      child: Text('Add'),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
