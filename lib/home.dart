import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      body: content(context),
    );
  }

  Widget content(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 100,
            width: double.infinity,
            child: Image.asset('assets/logo.png'),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "CAFFEINATED",
          style: TextStyle(
            color: Colors.brown,
            fontSize: 35,
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: (() => Navigator.of(context).pushNamed("/menu")),
          child: Container(
            height: 40,
            width: 110,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.brown),
            child: Center(
              child: Text(
                "Get Started",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
