import 'package:ecommerce_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Nike Logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  'lib/images/paint.png',
                  height: 180,
                  width: 200,
                ),
              ),

              const SizedBox(height: 40),

              //Title
              const Text(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  "Crafted with Passion"),

              const SizedBox(height: 28),

              //Sub-Text
              Text(
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade600,
                ),
                "Discover unique handmade treasures from local artisans",
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 58),

              //Button to allow user to enter store
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 9, 50, 111),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Shop",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
