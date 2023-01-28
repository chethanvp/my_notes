import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_notes/screens/home_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/logo.png',
              height: 300, alignment: Alignment.center),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "My Notes",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 50,
            width: 200,
            child: Divider(
              color: Colors.black,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[900],
                elevation: 12.0,
                padding: const EdgeInsets.symmetric(
                    horizontal: 50.0, vertical: 18.0),
                textStyle: const TextStyle(fontSize: 18)),
            onPressed: () {
              log("Sign Up");
            },
            child: const Text("Sign Up"),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[900],
                elevation: 12.0,
                padding: const EdgeInsets.symmetric(
                    horizontal: 50.0, vertical: 18.0),
                textStyle: const TextStyle(fontSize: 18)),
            onPressed: () {
              log("Sign In");
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const HomePage();
              }));
            },
            child: const Text("Sign In"),
          )
        ],
      ),
    );
  }
}
