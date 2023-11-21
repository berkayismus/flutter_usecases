import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_usecases/riverpod_examples/todo_model.dart';

final todoListProvider =
    AsyncNotifierProvider.autoDispose<TodoList, List<Todo>>(TodoList.new);

class TodoList extends AutoDisposeAsyncNotifier<List<Todo>> {
  @override
  FutureOr<List<Todo>> build() async {
    await Future.delayed(const Duration(seconds: 2));
    return [
      Todo(description: 'Learn Flutter', completed: true),
      Todo(description: 'Learn Riverpod'),
    ];
  }
}

class TodoListPage extends ConsumerWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoList = ref.watch(todoListProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todolist"),
      ),
      body: todoList.when(
        data: (data) => ListView.builder(
          itemCount: todoList.value?.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(todoList.value?[index].description ?? ""),
            );
          },
        ),
        error: (error, stackTrace) => Text(error.toString()),
        loading: () => const CircularProgressIndicator(),
      ),
    );
  }
}
