import 'package:flutter/material.dart';
import 'package:taxiapp2/constants/colors.dart';
import 'dart:async';
import 'success_screen.dart';
import 'car_list_screen.dart';
import 'constants/colors.dart'; // Import the colors.dart file

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation1;
  late Animation<double> _animation2;
  late Animation<double> _animation3;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat(reverse: true);

    _animation1 = Tween<double>(
      begin: 100,
      end: 200,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _animation2 = Tween<double>(
      begin: 80,
      end: 180,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _animation3 = Tween<double>(
      begin: 50,
      end: 160,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    Timer(const Duration(seconds: 20), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const SuccessScreen()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayishBlue, // Use the custom color
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CarListScreen()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
          child: const Text('Cancel Ride', style: TextStyle(fontSize: 18)),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  AnimatedBuilder(
                    animation: _animation1,
                    builder: (context, child) {
                      return Container(
                        width: _animation1.value,
                        height: _animation1.value,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red[300],
                        ),
                      );
                    },
                  ),
                  AnimatedBuilder(
                    animation: _animation2,
                    builder: (context, child) {
                      return Container(
                        width: _animation2.value,
                        height: _animation2.value,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green.withOpacity(0.4),
                        ),
                      );
                    },
                  ),
                  AnimatedBuilder(
                    animation: _animation3,
                    builder: (context, child) {
                      return Container(
                        width: _animation3.value,
                        height: _animation3.value,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange.withOpacity(0.4),
                        ),
                      );
                    },
                  ),
                  // Car Image
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.3),
                    ),
                    child: Center(
                      child: Image.asset('assets/images/loading_car.png', width: 150),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Fixed position text below the blooming effect
          Padding(
            padding: const EdgeInsets.only(
              bottom: 20.0,
              right: 20.0,
              left: 20.0,
            ),
            child: const Text(
              "We're connecting you to a driver now hang tight!",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
