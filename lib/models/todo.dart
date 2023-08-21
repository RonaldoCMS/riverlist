import 'package:uuid/uuid.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'todo.g.dart';

@CopyWith()
class Todo {
  final String id;
  final String title;
  final bool complete;


  Todo({required this.id, required this.title, required this.complete});

}