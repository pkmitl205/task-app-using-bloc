// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Todo _$TodoFromJson(Map<String, dynamic> json) => Todo()
  ..tasks = (json['tasks'] as List<dynamic>)
      .map((e) => Task.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$TodoToJson(Todo instance) => <String, dynamic>{
      'tasks': instance.tasks,
    };
