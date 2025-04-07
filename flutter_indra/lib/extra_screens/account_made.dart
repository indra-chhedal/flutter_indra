import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AccountMade extends StatelessWidget {
  const AccountMade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 242, 242),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            spacing: 25,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SvgPicture.asset(
                'images/svg_images/otp_image.svg',
                height: 300,
                width: double.infinity,
              ),
              Center(
                child: Text(
                  "OTP",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Enter the 6-digit code we sent to",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Center(
                    child: Text(
                      "chhedalindra055@gmail.com",
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 20, 48, 232),
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Text(
                  "Resend Code",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 10,
                children: [
                  Otpcode(),
                  Otpcode(),
                  Otpcode(),
                  Otpcode(),
                  Otpcode(),
                  Otpcode(),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton(
                  onPressed: () {},

                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      const Color.fromARGB(255, 224, 127, 35),
                    ),
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                  ),
                  child: Text("Confirm", style: TextStyle(fontSize: 18)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Otpcode extends StatelessWidget {
  const Otpcode({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: TextField(
        decoration: InputDecoration(
          fillColor: const Color.fromARGB(255, 188, 187, 187),
          filled: true,

          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

//pinput package use for otp code
