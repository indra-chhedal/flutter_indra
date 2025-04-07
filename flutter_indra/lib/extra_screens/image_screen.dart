import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Photos"),
        leading: ClipOval(
          child: Image.asset(
            "images/download.jpg",
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //we can use coloredBox to debug image size.
            Image.network(
              "https://picsum.photos/200",
              width: 400,
              height: 300,
              fit: BoxFit.cover,
            ),
            ClipOval(
              child: Image.asset(
                "images/hello.jpg",
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),

            SvgPicture.asset(
              'images/payment.svg',
              height: 300,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
