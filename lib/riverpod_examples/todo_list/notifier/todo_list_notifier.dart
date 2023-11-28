import 'package:flutter/foundation.dart';
import 'package:flutter_usecases/riverpod_examples/todo_list/todo_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Necessary for code-generation to work
part 'todo_list_notifier.g.dart';

@riverpod
class TodoListNotifier extends _$TodoListNotifier {
  late List<Todo> todoList;

  // * provider'lara parametre gönderebiliriz
  // * örn: [whoIAm]
  @override
  Future<List<Todo>> build({required String whoIAm}) async {
    await Future.delayed(const Duration(seconds: 2));

    debugPrint("I' am $whoIAm");

    todoList = <Todo>[
      Todo(description: 'Learn Flutter', completed: true),
      Todo(description: 'Learn Riverpod'),
    ];

    return todoList;
  }

  Future<void> addTodo(Todo todo) async {
    // web servisi taklit etmek
    await Future.delayed(const Duration(seconds: 2));

    todoList.add(todo);

    // notifierımızın build metodumuzu tekrar çalıştıracak
    // arayüz de güncellenmiş olacak
    ref.invalidateSelf();
  }

  //* servise [TODO] gönderirken, arayüzü güncellemenin yöntemlerinden biri
  // * updating the local cache manually
  /*  Future<void> addTodo(Todo todo) async {
    // * build metodunu tekrar çağırıyor
    //ref.invalidateSelf();

    state = const AsyncLoading();
    await Future.delayed(const Duration(seconds: 2));
    state = AsyncData(todoList);
    final previousState = await future;

    state = AsyncData([...previousState, todo]);
  } */
}
