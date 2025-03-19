import 'package:flutter/material.dart';
import 'package:flutter_indra/page_view.dart';

class IndraChhedal extends StatelessWidget {
  const IndraChhedal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 116, 119, 121),
      drawer: Drawer(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 50, 8, 8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 118, 170, 184),
                  ),

                  currentAccountPicture: ClipOval(
                    child: Image.asset("images/pic.jpg"),
                  ),
                  accountName: Text("Indra Chhedal"),
                  accountEmail: Text("chhedalindra055@gmail.com"),
                ),

                DrawDemo(
                  demoIcon: Icons.video_library_sharp,
                  label: "Video Content",
                ),
                DrawDemo(demoIcon: Icons.facebook_sharp, label: "Facebook"),
                DrawDemo(
                  demoIcon: Icons.calendar_month_sharp,
                  label: "Calendar",
                ),
                DrawDemo(demoIcon: Icons.newspaper_sharp, label: "News Paper"),

                // Container(
                //   padding: EdgeInsets.all(20),
                //   height: 80,
                //   width: double.infinity,
                //   decoration: BoxDecoration(
                //     border: Border.all(color: Colors.brown),
                //   ),
                //   child: Row(
                //     spacing: 20,
                //     children: [
                //       Icon(Icons.newspaper_sharp),

                //       Text(
                //         "News Paper",
                //         style: TextStyle(color: Colors.blue, fontSize: 24),
                //       ),
                //     ],
                //   ),
                // ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(20),
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.brown),
                  ),
                  child: Row(
                    spacing: 40,
                    children: [
                      Text(
                        "Dark Mode",
                        style: TextStyle(color: Colors.blue, fontSize: 24),
                      ),
                      Switch(value: false, onChanged: null),
                    ],
                  ),
                ),
                SizedBox(height: 10),

                Container(
                  padding: EdgeInsets.only(left: 30, top: 10, bottom: 10),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 122, 120, 120),
                    ),
                  ),
                  child: Text(
                    "Change Language",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 108, 107, 107),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 122, 120, 120),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "English Language",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 108, 107, 107),
                        ),
                      ),
                      SizedBox(width: 130),
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 30,
                        color: Colors.redAccent,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 122, 120, 120),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Nepali Language",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 108, 107, 107),
                        ),
                      ),
                      SizedBox(width: 130),
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 30,
                        color: Colors.redAccent,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Indra Chhedal", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 171, 213, 247),
        foregroundColor: Colors.white,
        centerTitle: true,

        actions: [
          IconButton(
            iconSize: 30,
            padding: EdgeInsets.only(right: 20),
            color: const Color.fromARGB(255, 255, 64, 43),
            icon: const Icon(Icons.notification_add_sharp),
            onPressed: () {},
          ),
        ],
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              color: const Color.fromARGB(255, 243, 231, 186),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Introduction",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 11, 11, 232),
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Hello there, this is me indra chhedal. i am studying bca at kathmandu Bernhardt college, Bafal, Kathmandu. i am passinate on flutter app developer.",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "News Feed",
                    style: TextStyle(color: Colors.blue, fontSize: 25),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 5,
                      children: [
                        PageViewExample(photo: "images/pic.jpg"),
                        PageViewExample(photo: "images/download.jpg"),
                        PageViewExample(photo: "images/hello.jpg"),
                        PageViewExample(photo: "images/nepal.jpg"),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 300, child: PageViewExampleApp()),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          // BottomNavigationBarItem(icon: Icon(Icons.business),label: 'Business',),
          // BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger_sharp),
            label: 'messange',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],

        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}

//this is a custom widget for drawer icons
class DrawDemo extends StatelessWidget {
  final String label;
  final IconData demoIcon;

  const DrawDemo({required this.label, required this.demoIcon, super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(border: Border.all(color: Colors.brown)),
      child: Row(spacing: 20, children: [Icon(demoIcon), Text(label)]),
    );
  }
}

// this is for pageview options
class PageViewExample extends StatelessWidget {
  final String photo;

  const PageViewExample({required this.photo, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      // width: double.infinity,  we can use page view at this place.
      width: 300,
      color: Colors.amberAccent,
      child: Image.asset(photo, fit: BoxFit.cover),
    );
  }
}
