import 'package:flutter/material.dart';
import 'loading_screen.dart';
import 'car_list_screen.dart';
import 'next_screen.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300], // Gray background color
      appBar: AppBar(title: const Text('Ride Found!')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Your ride is on the way!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const CarListScreen()),
                );
              },
              child: const Text('Home Button'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const NextScreen()),
                );
              },
              child: const Text('Next Button'),
            ),
          ],
        ),
      ),
    );
  }
}