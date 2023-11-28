import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_usecases/riverpod_examples/todo_list/notifier/todo_list_notifier.dart';
import 'package:flutter_usecases/riverpod_examples/todo_list/todo_model.dart';

class TodoListPage extends ConsumerWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoList = ref.watch(todoListNotifierProvider(whoIAm: "Test"));
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todolist"),
      ),
      body: Column(
        children: [
          todoList.when(
            data: (data) => Expanded(
              child: ListView.builder(
                itemCount: todoList.value?.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(todoList.value?[index].description ?? ""),
                  );
                },
              ),
            ),
            error: (error, stackTrace) => Text(error.toString()),
            loading: () => const CircularProgressIndicator(),
          ),
          ElevatedButton(
            onPressed: () {
              ref
                  .read(todoListNotifierProvider(whoIAm: "Berkay").notifier)
                  .addTodo(Todo(description: 'This is a new todo'));
            },
            child: const Text("add todo"),
          )
        ],
      ),
    );
  }
}
