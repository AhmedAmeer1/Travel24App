class Car {
  final String name;
  final String price;
  final String image;
  final String description;
  final int seats;
  final int passengers;
  final String time;

  Car({
    required this.name,
    required this.price,
    required this.image,
    required this.description,
    required this.seats,
    required this.passengers,
    required this.time,
  });
}

List<Car> carList = [
  Car(
    name: "Tesla Model S",
    price: "\$80,000",
    image: "assets/images/car6.png",
    description: "A high-performance electric car with autonomous features.",
    seats: 5,
    passengers: 3,
    time: '09:24',
  ),
  Car(
    name: "BMW M4",
    price: "\$70,000",
    image: "assets/images/car6.png",
    description: "A luxury sports coupe with incredible speed and handling.",
    seats: 4,
    passengers: 1,
    time: '07:24',
  ),
  Car(
    name: "Audi R8",
    price: "\$150,000",
    image: "assets/images/car6.png",
    description: "A stunning supercar with a powerful V10 engine.",
    seats: 2,
    passengers: 3,
    time: '01:24',
  ),
  Car(
    name: "Mercedes AMG GT1111",
    price: "\$120,000",
    image: "assets/images/car6.png",
    description: "A high-end performance car with a sleek design.",
    seats: 2,
    passengers: 5,
    time: '02:24',
  ),
  Car(
    name: "Tesla Model S",
    price: "\$80,000",
    image: "assets/images/car6.png",
    description: "A high-performance electric car with autonomous features.",
    seats: 5,
    passengers: 2,
    time: '09:24',
  ),
  Car(
    name: "BMW M4",
    price: "\$70,000",
    image: "assets/images/car6.png",
    description: "A luxury sports coupe with incredible speed and handling.",
    seats: 4,
    passengers: 4,
    time: '03:24',
  ),
  Car(
    name: "Audi R8",
    price: "\$150,000",
    image: "assets/images/car6.png",
    description: "A stunning supercar with a powerful V10 engine.",
    seats: 2,
    passengers: 2,
    time: '06:24',
  ),
];
