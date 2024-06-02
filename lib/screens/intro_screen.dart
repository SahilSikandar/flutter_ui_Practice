import 'package:flutter/material.dart';
import 'package:ui_practice/screens/home_page.dart';

import '../styles/text_style.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 80, right: 80, bottom: 40, top: 150),
            child: Image.asset("lib/images/avocado.png"),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "We deliver grocries at your door steps",
              textAlign: TextAlign.center,
              style: Styles.h1,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            "Fresh items Everyday",
            style: Styles.subh1,
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const HomePage(),
            )),
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12)),
              child: Text(
                "Get Started",
                style: Styles.buttonText,
              ),
            ),
          ),
          const Spacer(
            flex: 2,
          )
        ],
      ),
    );
  }
}
