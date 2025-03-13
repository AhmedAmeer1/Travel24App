import 'package:flutter/material.dart';
import '../models/car.dart';

class CarDetailScreen extends StatelessWidget {
  final Car car;

  const CarDetailScreen({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(car.name)),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(car.image, width: 100, height: 100),
            // Image.network(
            //   car.image,
            //   width: 300,
            //   height: 200,
            //   fit: BoxFit.cover,
            // ),
            SizedBox(height: 20),
            Text(
              car.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              car.price,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.green),
            ),
            SizedBox(height: 20),
            Text(
              car.description,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
