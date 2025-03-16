import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 241, 221, 244),
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
                    Text("title 1", style: TextStyle(fontSize: 24)),
                    Text(
                      "Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that does not ...",
                    ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 241, 221, 244),
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
                    Text("title 1", style: TextStyle(fontSize: 24)),
                    Text(
                      "Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that does not ...",
                    ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 241, 221, 244),
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
                    Text("title 1", style: TextStyle(fontSize: 24)),
                    Text(
                      "Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that does not ...",
                    ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 241, 221, 244),
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
                    Text("title 1", style: TextStyle(fontSize: 24)),
                    Text(
                      "Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that does not ...",
                    ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 241, 221, 244),
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
                    Text("title 1", style: TextStyle(fontSize: 24)),
                    Text(
                      "Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that does not ...",
                    ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 241, 221, 244),
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
                    Text("title 5", style: TextStyle(fontSize: 24)),
                    Text(
                      "Lorem ipsum is a dummy or The word 'lorem', for example, isn't a real Latin word, it's a shortened version of the word 'dolorem', meaning pain. This makes the current dummy text impossible to translate into English. placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that does not ...",
                    ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 241, 221, 244),
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
                    Text("title 6", style: TextStyle(fontSize: 24)),
                    Text(
                      "Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that does not . The word 'lorem', for example, isn't a real Latin word, it's a shortened version of the word 'dolorem', meaning pain. This makes the current dummy text impossible to translate into English.",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
