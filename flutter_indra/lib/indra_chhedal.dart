import 'package:flutter/material.dart';

class IndraChhedal extends StatelessWidget {
  const IndraChhedal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Indra Chhedal", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 171, 213, 247),
        centerTitle: true,
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
        ],
      ),
    );
  }
}
