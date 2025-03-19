import 'package:flutter/material.dart';

class PageViewExampleApp extends StatefulWidget {
  const PageViewExampleApp({super.key});

  @override
  State<PageViewExampleApp> createState() => _PageViewExampleAppState();
}

class _PageViewExampleAppState extends State<PageViewExampleApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Column(
          children: [
            Text(
              "Advertisement field",
              style: TextStyle(
                color: const Color.fromARGB(255, 62, 240, 121),
                fontSize: 25,
              ),
            ),
            Expanded(
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
    );
  }
}
