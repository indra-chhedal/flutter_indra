import 'package:flutter/material.dart';

class IndraChhedal extends StatelessWidget {
  const IndraChhedal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
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
                currentAccountPicture: Container(
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                accountName: Text("Indra Chhedal"),
                accountEmail: Text("chhedalindra055@gmail.com"),
              ),

              DrawDemo(
                demoIcon: Icons.video_library_sharp,
                label: "Video Content",
              ),
              DrawDemo(demoIcon: Icons.facebook_sharp, label: "Facebook"),
              DrawDemo(demoIcon: Icons.calendar_month_sharp, label: "Calendar"),
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
              //       Icon(Icons.video_library_sharp),

              //       Text(
              //         "video Content",
              //         style: TextStyle(color: Colors.blue, fontSize: 24),
              //       ),
              //     ],
              //   ),
              // ),

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
              //       Icon(Icons.facebook_sharp),

              //       Text(
              //         "Facebook",
              //         style: TextStyle(color: Colors.blue, fontSize: 24),
              //       ),
              //     ],
              //   ),
              // ),

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
              //       Icon(Icons.calendar_month_sharp),

              //       Text(
              //         "Calendar",
              //         style: TextStyle(color: Colors.blue, fontSize: 24),
              //       ),
              //     ],
              //   ),
              // ),

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
            ],
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
