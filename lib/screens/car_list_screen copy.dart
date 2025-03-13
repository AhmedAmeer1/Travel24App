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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(car.image, width: 100, height: 100),

                        SizedBox(width: 15),
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

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 65),
                        Text("Seats: ${car.seats}"),
                        Container(
                          width: 1, // Line width
                          height: 20, // Adjust height as needed
                          color: Colors.grey, // Line color
                        ),
                        Text("Pass: ${car.passengers}"),
                        Container(width: 1, height: 20, color: Colors.grey),
                        Text(" ${car.type}"),
                      ],
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
