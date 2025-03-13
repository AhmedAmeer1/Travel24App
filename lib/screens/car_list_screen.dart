import 'package:flutter/material.dart';
import '../models/car.dart';
import 'car_detail_screen.dart';

class CarListScreen extends StatelessWidget {
  const CarListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Car List")),
      body: ListView.builder(
        itemCount: carList.length,
        itemBuilder: (context, index) {
          final car = carList[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CarDetailScreen(car: car),
                ),
              );
            },
            child: Card(
              margin: EdgeInsets.all(10),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Car image on the left
                    Image.asset(car.image, width: 100, height: 100),

                    SizedBox(width: 15),

                    // Car details on the right
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Car name and price row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  car.name,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                car.price,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 10),

                          // Second row: Seats, Passengers, Type with vertical dividers
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Seats: ${car.seats}"),
                              Container(
                                width: 1, // Vertical line width
                                height: 20,
                                color: Colors.grey, // Line color
                              ),
                              Text("Pass: ${car.passengers}"),
                              Container(
                                width: 1,
                                height: 20,
                                color: Colors.grey,
                              ),
                              Text(car.type),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
