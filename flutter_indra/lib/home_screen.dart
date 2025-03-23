import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 239, 229, 193),
        title: Text(
          'First Project App',
          style: TextStyle(color: Colors.pinkAccent),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 10,
            children: [
              HomeDemo(
                title: "Title 1",
                description:
                    "Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that does not ...",
                bgcolors: Colors.red,
              ),

              HomeDemo(
                title: "title 2",
                description:
                    "Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that does not ...",
                bgcolors: Colors.lightBlueAccent,
              ),
              HomeDemo(
                title: "title 3",
                description:
                    "Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that does not ...",
                bgcolors: Colors.greenAccent,
              ),
              HomeDemo(
                title: "title 4",
                bgcolors: Colors.deepPurpleAccent,
                description:
                    "Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that does not ...",
              ),
              HomeDemo(
                title: "title 5",
                bgcolors: const Color.fromARGB(255, 243, 184, 166),
                description:
                    "Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that does not ...",
              ),
              HomeDemo(
                title: "title 6",
                bgcolors: Colors.grey,
                description:
                    "Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that does not ...",
              ),

              SizedBox(
                height: 200,
                child: PageView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5.0,
                      color: const Color.fromARGB(255, 234, 232, 225),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/hello.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          

        ),
      ),
    );
  }
}

class HomeDemo extends StatelessWidget {
  final String title;
  final String description;
  final Color bgcolors;

  const HomeDemo({
    required this.title,
    required this.description,
    required this.bgcolors,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: bgcolors,
        // color: const Color.fromARGB(255, 241, 221, 244),
        border: Border.all(
          width: 4,
          color: const Color.fromARGB(255, 247, 89, 226),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 24)),
          Text(description),
        ],
      ),
    );
  }
}
