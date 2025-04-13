import 'package:flutter/material.dart';
import 'package:flutter_indra/screens/add_todo_screen.dart';
import 'package:flutter_indra/models/todo.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  List<Todo> todos = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Card(
              color: Colors.green.shade100,
              child: ListTile(
                leading: Icon(Icons.check_circle, color: Colors.green),
                title: Text(
                  "Complete Flutter UI App challenge and upload it on Github",
                ),
                subtitle: Text("1hr 25m"),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Remaining Tasks (${todos.length})",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child:
                  todos.isEmpty
                      ? Center(
                        child: Text(
                          "List is Empty",
                          style: TextStyle(color: Colors.red, fontSize: 24),
                        ),
                      )
                      : ListView.builder(
                        itemCount: todos.length,
                        itemBuilder: (BuildContext context, int index) {
                          Todo todo = todos[index];
                          return Card(
                            color: const Color.fromARGB(255, 238, 235, 235),
                            elevation: 3,
                            child: ListTile(
                              title: Text(todo.title),
                              subtitle: Text(todo.description),
                              trailing: Checkbox(
                                value: todo.isCompleted,
                                onChanged: (value) {
                                  setState(() {
                                    todos[index] = todo.copyWith(
                                      isCompleted: !todo.isCompleted,
                                    );
                                  });
                                },
                              ),
                            ),
                          );
                        },
                      ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Todo? todo = await Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => AddTodoScreen()));
          if (todo != null) {
            setState(() {
              todos.add(todo);
            });
          }
        },

        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
    );
  }
}
