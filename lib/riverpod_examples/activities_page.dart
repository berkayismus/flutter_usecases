import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_usecases/riverpod_examples/activity_model.dart';
import 'package:http/http.dart' as http;

final activityProvider = FutureProvider.autoDispose<Activity>((ref) async {
  final response = await http.get(Uri.https('boredapi.com', '/api/activity'));

  final json = jsonDecode(response.body) as Map<String, dynamic>;
  return Activity.fromJson(json);
});

class ActivitiesPage extends ConsumerWidget {
  const ActivitiesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activity = ref.watch(activityProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Activities Page"),
      ),
      body: switch (activity) {
        AsyncData(:final value) => Text('Activity: ${value.activity}'),
        AsyncError() => const Text('Oops, something unexpected happened'),
        _ => const CircularProgressIndicator(),
      },
    );
  }
}
