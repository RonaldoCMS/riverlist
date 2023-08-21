import 'package:flutter/material.dart';
import 'package:riverlist/models/group.dart';
import 'package:riverlist/models/group_todo.dart';
import 'package:riverlist/models/todo.dart';
import 'package:uuid/uuid.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  var group = Group(groups: [
    GroupTodo(id: const Uuid().v4(), title: 'Gruppo1', todos: [
      Todo(id: const Uuid().v4(), title: 'Pippo', complete: true),
      Todo(id: const Uuid().v4(), title: 'Baudo', complete: true),
      Todo(id: const Uuid().v4(), title: 'Giggi', complete: false),
      Todo(id: const Uuid().v4(), title: 'Paky', complete: true),
      Todo(id: const Uuid().v4(), title: 'Pi', complete: false),
    ]),
    GroupTodo(id: const Uuid().v4(), title: 'Gruppo1', todos: [
      Todo(id: const Uuid().v4(), title: 'Pippo', complete: true),
      Todo(id: const Uuid().v4(), title: 'Baudo', complete: true),
      Todo(id: const Uuid().v4(), title: 'Giggi', complete: false),
      Todo(id: const Uuid().v4(), title: 'Paky', complete: true),
      Todo(id: const Uuid().v4(), title: 'Pi', complete: false),
    ])
  ], index: 0);

  var textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text("RiverList"),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 15,
            child: ListView.builder(
              itemBuilder: (context, index) => ListTile(
                title: Text(group.groups[index].title),
                selected: group.index == index,
                onTap: () =>
                    setState(() => group = group.copyWith(index: index)),
              ),
              itemCount: group.groups.length,
            ),
          ),
          Expanded(
            flex: 75,
            child: ListView.separated(
                itemBuilder: (context, index) => ListTile(
                      title: Text(group.attualGroup.todos[index].title),
                      leading: Checkbox(
                        value: group.attualGroup.todos[index].complete,
                        onChanged: (value) => setState(() => group
                                .attualGroup.todos[index] =
                            group.attualGroup.todos[index].copyWith(complete: value)),
                      ),
                    ),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: group.attualGroup.todos.length),
          ),
        ],
      ),
      bottomSheet:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: const InputDecoration(hintText: "Scrivi..."),
          controller: textController,
          onSubmitted: (value) => setState(() {
            group.attualGroup.todos.add(Todo(id: Uuid().v4(), title: value, complete: false));
            textController.clear();
          }),
        
        ),
      ),
    );
  }
}
