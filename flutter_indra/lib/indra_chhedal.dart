import 'package:flutter/material.dart';
import 'package:flutter_indra/page_view.dart';

class IndraChhedal extends StatelessWidget {
  const IndraChhedal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 248, 248),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 249, 247, 247),
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

                Card(
                  elevation: 3.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,

                    children: [
                      DrawDemo(
                        demoIcon: Icons.video_library_sharp,
                        label: "Video Content",
                      ),
                      Divider(),
                      DrawDemo(
                        demoIcon: Icons.facebook_sharp,
                        label: "Facebook",
                      ),
                      Divider(),
                      DrawDemo(
                        demoIcon: Icons.calendar_month_sharp,
                        label: "Calendar",
                      ),
                      Divider(),
                      DrawDemo(
                        demoIcon: Icons.newspaper_sharp,
                        label: "News Paper",
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),
                Card(
                  elevation: 2.0,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    height: 80,
                    width: double.infinity,

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
                ),
                SizedBox(height: 10),

                Card(
                  elevation: 2.0,

                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 30, top: 10, bottom: 10),
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(),
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
                          border: Border.symmetric(
                            horizontal: BorderSide(
                              width: 1,
                              color: const Color.fromARGB(255, 199, 195, 195),
                            ),
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
                            SizedBox(width: 120),
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
                        decoration: BoxDecoration(),
                        child: Row(
                          children: [
                            Text(
                              "Nepali Language",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 108, 107, 107),
                              ),
                            ),
                            SizedBox(width: 120),
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
                SizedBox(height: 10),

                //section for social links
                Row(
                  spacing: 8,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialIcons(
                      icons: Icons.facebook_outlined,
                      color: Colors.lightBlueAccent,
                    ),
                    SocialIcons(
                      icons: Icons.web_asset,
                      color: Colors.greenAccent,
                    ),
                    SocialIcons(
                      icons: Icons.tiktok_outlined,
                      color: const Color.fromARGB(66, 7, 6, 6),
                    ),
                    SocialIcons(
                      icons: Icons.yard_outlined,
                      color: Colors.yellow,
                    ),
                  ],
                ),
                SizedBox(height: 20),

                //section for google map
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Powered By:", style: TextStyle(fontSize: 12)),

                    Icon(
                      Icons.location_on_sharp,
                      color: Colors.redAccent,
                      size: 30,
                    ),
                  ],
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
            //news feed section
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
                        PageViewExample(
                          heading: "hello first image in my news feed section",
                          photo: "images/pic.jpg",
                        ),
                        PageViewExample(
                          heading: "hello first image in my news feed section",
                          photo: "images/download.jpg",
                        ),
                        PageViewExample(
                          heading: "hello first image in my news feed section",
                          photo: "images/hello.jpg",
                        ),
                        PageViewExample(
                          heading: "hello first image in my news feed section",
                          photo: "images/nepal.jpg",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //advertisement section
            SizedBox(height: 300, child: PageViewExampleApp()),

            //service section
            Container(
              margin: EdgeInsets.symmetric(horizontal: 6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Services",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  SizedBox(height: 10),
                  Services(
                    label: "Nepali Calendar",
                    demoIcon: Icons.calendar_month_sharp,
                  ),
                  Services(
                    label: "Nepali Date Converter",
                    demoIcon: Icons.calendar_today,
                  ),
                  Services(
                    label: "Visa Check Links",
                    demoIcon: Icons.book_online,
                  ),
                ],
              ),
            ),

            //usefull link section
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Useful Links",
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
                Links(label: "EDV Online Form", demoIcon: Icons.event_rounded),
                Links(
                  label: "Voter Id form",
                  demoIcon: Icons.how_to_vote_rounded,
                ),
                Links(
                  label: "Licence Form",
                  demoIcon: Icons.library_add_check_rounded,
                ),
              ],
            ),
            SizedBox(height: 20),
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
      width: double.infinity,
      decoration: BoxDecoration(),
      child: Row(
        spacing: 20,
        children: [
          Icon(demoIcon),
          Text(label),
          SizedBox(width: 30),
          Icon(Icons.keyboard_arrow_right),
        ],
      ),
    );
  }
}

// news feed section
class PageViewExample extends StatelessWidget {
  final String photo;
  final String heading;

  const PageViewExample({
    required this.heading,
    required this.photo,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 200,
        width: 300,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: const Color.fromARGB(255, 247, 245, 245),
          ),
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 234, 234, 232),
        ),

        child: Column(
          children: [
            Image.asset(photo, height: 150, width: 300, fit: BoxFit.cover),
            SizedBox(height: 5),
            Text(heading),
          ],
        ),
      ),
    );
  }
}

//social icons
class SocialIcons extends StatelessWidget {
  final IconData icons;
  final Color color;

  const SocialIcons({required this.icons, required this.color, super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: CircleBorder(eccentricity: 0.1),

      child: Container(
        padding: EdgeInsets.all(13),
        child: ClipOval(child: Icon(icons, color: color)),
      ),
    );
  }
}

//services
class Services extends StatelessWidget {
  final String label;
  final IconData demoIcon;

  const Services({required this.label, required this.demoIcon, super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        padding: EdgeInsets.all(20),

        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 251, 250, 250),
          border: Border.symmetric(
            horizontal: BorderSide(
              width: 1,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Row(
          spacing: 20,
          children: [
            Icon(demoIcon, color: Colors.blueAccent),
            Text(label, style: TextStyle(color: Colors.blueAccent)),
            SizedBox(width: 30),
            Icon(Icons.keyboard_arrow_right, color: Colors.blueAccent),
          ],
        ),
      ),
    );
  }
}

//useful links
class Links extends StatelessWidget {
  final String label;
  final IconData demoIcon;

  const Links({required this.label, required this.demoIcon, super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Container(
        padding: EdgeInsets.all(20),

        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 251, 250, 250),
          border: Border.symmetric(
            horizontal: BorderSide(
              width: 1,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Row(
          spacing: 20,
          children: [
            Icon(demoIcon),
            Text(label),
            SizedBox(width: 30),
            Icon(Icons.keyboard_arrow_right),
          ],
        ),
      ),
    );
  }
}

//clip r rect
//divider
