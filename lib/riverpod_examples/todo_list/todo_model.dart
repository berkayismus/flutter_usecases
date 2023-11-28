// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Todo {
  Todo({
    required this.description,
    this.completed = false,
  });

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      description: json['description'] as String,
      completed: json['completed'] as bool,
    );
  }

  final String description;
  final bool completed;

  Todo copyWith({
    String? description,
    bool? completed,
  }) {
    return Todo(
      description: description ?? this.description,
      completed: completed ?? this.completed,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'completed': completed,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      description: map['description'] as String,
      completed: map['completed'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() => 'Todo(description: $description, completed: $completed)';

  @override
  bool operator ==(covariant Todo other) {
    if (identical(this, other)) return true;

    return other.description == description && other.completed == completed;
  }

  @override
  int get hashCode => description.hashCode ^ completed.hashCode;
}
