import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:plant_store/themes/colors.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/images/logo.png',
                width: 180.0,
                height: 180.0,
              ),
            ),
            Image.asset('assets/images/store_graphic.png'),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: 'Discover the ',
                  style: TextStyle(
                    color: darkTextColor,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: 'perfect plant ',
                      style: TextStyle(
                          color: green,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'for your space!',
                      style: TextStyle(
                          color: darkTextColor,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(
                'Get access to a wide variety of indoor and outdoor plants with just a few taps.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(green),
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 5.0),
              // TODO: need to fix login button.
              RichText(
                text: TextSpan(
                  text: 'Already have an account? ',
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500),
                  children: [
                    TextSpan(
                      text: 'Login',
                      style: const TextStyle(
                        color: green,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
