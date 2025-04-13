import 'package:flutter/widgets.dart';

class Todo {
  final String title;
  final String description;
  final bool isCompleted;

  Todo({
    required this.title,
    required this.description,
    required this.isCompleted,
  });

  Todo copyWith({String? title, String? description, bool? isCompleted}) {
    return Todo(
      title: this.title,
      description: this.description,
      isCompleted:  this.isCompleted,
    );
  }
}
