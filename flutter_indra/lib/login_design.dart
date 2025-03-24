import 'package:flutter/material.dart';
import 'package:flutter_indra/register_page.dart';

import 'package:flutter_svg/svg.dart';

class Loginpages extends StatelessWidget {
  const Loginpages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Center(
              child: Column(
                spacing: 30,
                children: [
                  SvgPicture.asset(
                    'images/svg_images/amico.svg',
                    height: 250,
                    width: 250,
                  ),

                  Text(
                    "login",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Column(
                    spacing: 15,
                    children: [
                      Text("Email"),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),

                          fillColor: const Color.fromARGB(255, 201, 199, 199),
                          filled: true,
                          hintText: "jondoe@gmail.com",
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),

                      Text("Password"),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),

                          fillColor: const Color.fromARGB(255, 201, 199, 199),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ButtonTheme(
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 140, 82),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 7,

                    children: [
                      Text("Log in With", style: TextStyle(fontSize: 16)),
                      SizedBox(width: 20),

                      // IconButton(
                      //   icon: Icon(
                      //     Icons.email,
                      //     color: const Color.fromARGB(255, 180, 99, 93),
                      //   ),
                      //   onPressed: () {
                      //     //code here
                      //   },
                      // ),
                      SvgPicture.asset(
                        'images/svg_images/github.svg',
                        height: 30,
                        width: 30,
                      ),
                      // IconButton(
                      //   icon: Icon(
                      //     Icons.facebook,
                      //     color: const Color.fromARGB(255, 13, 134, 233),
                      //   ),
                      //   onPressed: () {
                      //     //code here
                      //   },
                      // ),
                      Icon(
                        Icons.facebook_outlined,
                        color: Colors.blue,
                        size: 26,
                      ),
                      // IconButton(
                      //   icon: Icon(
                      //     SvgPicture.asset('images/svg_images/google.svg'),
                      //     color: const Color.fromARGB(255, 41, 40, 40),
                      //   ),
                      //   onPressed: () {
                      //     //code here
                      //   },
                      // ),
                      SvgPicture.asset(
                        'images/svg_images/google.svg',
                        height: 20,
                        width: 20,
                      ),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("No Account? "),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterPage(),
                            ),
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 231, 175, 7),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
