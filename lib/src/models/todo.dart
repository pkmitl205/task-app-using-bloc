import 'package:json_annotation/json_annotation.dart';
import '../models/task.dart';
part 'todo.g.dart';

@JsonSerializable()
class Todo {
  late List<Task> tasks;
  Todo({List<Task>? initTasks}) {
    this.tasks = initTasks ?? [];
  }

  Todo.from(Todo old) {
    this.tasks = old.tasks;
  }
  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
  Map<String, dynamic> toJson() => _$TodoToJson(this);
}
