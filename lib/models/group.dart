import 'package:riverlist/models/group_todo.dart';

import 'package:copy_with_extension/copy_with_extension.dart';

part 'group.g.dart';

@CopyWith()
class Group {
  final int index;
  final List<GroupTodo> groups;

  GroupTodo get  attualGroup => groups[index];

  Group({required this.index, required this.groups});
}