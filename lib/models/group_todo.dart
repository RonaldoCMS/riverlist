import 'package:riverlist/models/todo.dart';
import 'package:uuid/uuid.dart';

class GroupTodo {
  final String id;
  final String title;
  final List<Todo> todos;

  const GroupTodo({required this.id, required this.title,required this.todos});
}