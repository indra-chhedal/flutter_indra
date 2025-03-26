import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 236, 234, 234),
        width: 250,
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: ClipOval(
                  child: Image.asset('images/nepal.jpg'),
                ),
                accountName: Text("Todo Application"),
                accountEmail: Text('chhedalindra055@gmail.com'),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: const Color.fromARGB(255, 61, 68, 71),
        centerTitle: true,
        title: Text(
          "My Todo",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        ],
      ),
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
              "Remaining Tasks (24)",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    ListItem(
                      icons: Icons.check_circle,
                      description: "complete all the college assignments",
                      times: "May 16",
                    ),
                    ListItem(
                      icons: Icons.check_circle,
                      description: "complete all the college assignments",
                      times: "May 16",
                    ),
                    ListItem(
                      icons: Icons.alarm_add_outlined,
                      description: "complete all the college assignments",
                      times: "May 16",
                    ),
                    ListItem(
                      icons: Icons.check_circle,
                      description: "complete all the college assignments",
                      times: "May 16",
                    ),
                    ListItem(
                      icons: Icons.check_circle,
                      description: "complete all the college assignments",
                      times: "May 16",
                    ),
                    ListItem(
                      icons: Icons.check_circle,
                      description: "complete all the college assignments",
                      times: "May 16",
                    ),
                    ListItem(
                      icons: Icons.check_circle,
                      description: "complete all the college assignments",
                      times: "May 16",
                    ),
                    ListItem(
                      icons: Icons.check_circle,
                      description: "complete all the college assignments",
                      times: "May 16",
                    ),
                    ListItem(
                      icons: Icons.check_circle,
                      description: "complete all the college assignments",
                      times: "May 16",
                    ),
                    ListItem(
                      icons: Icons.check_circle,
                      description: "complete all the college assignments",
                      times: "May 16",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},

        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String description;
  final IconData icons;
  final String times;

  const ListItem({
    required this.icons,
    required this.description,
    required this.times,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: ListTile(
        leading: Icon(icons, color: const Color.fromARGB(255, 199, 201, 199)),
        title: Text(description),
        subtitle: Text(times),
      ),
    );
  }
}
