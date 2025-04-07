import 'package:flutter/material.dart';
import 'package:flutter_indra/screens/register_page.dart';

import 'package:flutter_svg/svg.dart';

class Loginpages extends StatelessWidget {
  const Loginpages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 30,
            children: [
              SvgPicture.asset(
                'images/svg_images/amico.svg',
                height: 250,
                width: 250,
              ),

              Center(
                child: Text(
                  "login",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 15,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text("Email"),
                  ),
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

                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text("Password"),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),

                      fillColor: const Color.fromARGB(255, 201, 199, 199),
                      filled: true,
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove_red_eye),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.redAccent),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                ),
                child: Text("Login"),
              ),

              //alternative button
              // ButtonTheme(
              //   child: Container(
              //     height: 50,
              //     width: double.infinity,
              //     decoration: BoxDecoration(
              //       color: const Color.fromARGB(255, 255, 140, 82),
              //       borderRadius: BorderRadius.circular(30),
              //     ),
              //     child: Center(
              //       child: Text(
              //         "Login",
              //         style: TextStyle(color: Colors.white),
              //       ),
              //     ),
              //   ),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text("Log in With", style: TextStyle(fontSize: 16)),
                  SizedBox(width: 20),

                  IconButton(
                    icon: SvgPicture.asset(
                      'images/svg_images/google.svg',
                      height: 20,
                    ),
                    onPressed: () {
                      //code here
                    },
                  ),

                  IconButton(
                    icon: SvgPicture.asset(
                      'images/svg_images/github.svg',
                      height: 30,
                    ),
                    onPressed: () {
                      //code here
                    },
                  ),

                  IconButton(
                    icon: SvgPicture.asset(
                      'images/svg_images/github.svg',
                      height: 30,
                    ),
                    onPressed: () {
                      //code here
                    },
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
                        MaterialPageRoute(builder: (context) => RegisterPage()),
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
    );
  }
}

//stateful widget's lifecycle
//init state in statful widget
//dispose
