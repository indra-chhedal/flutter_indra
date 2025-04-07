import 'package:flutter/material.dart';
import 'package:flutter_indra/models/todo.dart';

class AddTodoScreen extends StatefulWidget {
  const AddTodoScreen({super.key});

  @override
  State<AddTodoScreen> createState() => _AddTodoScreenState();
}

class _AddTodoScreenState extends State<AddTodoScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController titleControler = TextEditingController();
  TextEditingController descriptionControler = TextEditingController();

  @override
  void dispose() {
    titleControler.dispose();
    descriptionControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("add items")),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: titleControler,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                labelText: "Description",
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return "title is required";
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: descriptionControler,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                labelText: "Description",
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return "Description is required";
                }
                return null;
              },
            ),

            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                bool isValid = _formKey.currentState!.validate();

                if (isValid) {
                  Todo todo = Todo(
                    title: titleControler.text,
                    description: descriptionControler.text,
                    isCompleted: false,
                  );
                  Navigator.of(context).pop(todo);
                }
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.amberAccent),
              ),
              child: Text("Add Item"),
            ),
          ],
        ),
      ),
    );
  }
}
