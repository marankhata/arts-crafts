import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Text('About'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 9, 50, 111),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'Discover the beauty of handmade crafts crafted by local artists. Our store is a celebration of creativity, offering a diverse range of unique items for you to explore and enjoy.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 9, 50, 111),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Why choose us?',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '1. Unique and Handcrafted: Every item in our store is carefully handmade, ensuring uniqueness in every piece.',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Text(
                    '2. Support Local Artists: By shopping with us, you support local artists and contribute to the growth of our creative community.',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Text(
                    '3. Diverse Selection: From paintings to sculptures, jewelry to home decor, our store offers a diverse range of arts and crafts.',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
