import 'package:flutter/material.dart';
import 'screens/car_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CarListScreen(),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'screens/location_search_screen.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Taxi App',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: LocationSearchScreen(),
//     );
//   }
// }
