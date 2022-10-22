// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) => Task(
      text: json['text'] as String,
      status: json['status'] as String? ?? 'normal',
    );

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'text': instance.text,
      'status': instance.status,
    };
