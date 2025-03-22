import 'package:flutter/material.dart';
import 'package:flutter_indra/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 45, 87, 122),
      appBar: AppBar(title: Text("lgoin your id"), centerTitle: true),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: ClipOval(
                    child: Image.asset(
                      "images/pic.jpg",
                      fit: BoxFit.cover,
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                const Text(
                  "Username",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const SizedBox(height: 10),
                const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: 'Enter a username',
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Password",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const SizedBox(height: 10),
                const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: 'Enter a password',
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  height: 45,
                  width: 90,
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 45, 87, 122),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterPage(),
                          ),
                        );
                      },
                      child: const Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 249, 11, 11),
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
    );
  }
}
