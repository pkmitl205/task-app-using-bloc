import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../models/main.dart';

// class TodoCubit extends Cubit<Todo> {
class TodoCubit extends HydratedCubit<Todo> {
  TodoCubit(Todo initialState) : super(initialState);

  void add(Task t) {
    state.tasks.add(t);
    emit(Todo.from(state));
  }

  void remove(Task t) {
    state.tasks.remove(t);
    emit(Todo.from(state));
  }

  @override
  Todo? fromJson(Map<String, dynamic> json) => Todo.fromJson(json);

  @override
  Map<String, dynamic>? toJson(Todo state) => state.toJson();
}
