class Car {
  final String name;
  final String price;
  final String image;
  final String description;
  final int seats;
  final int passengers;
  final String type;

  Car({
    required this.name,
    required this.price,
    required this.image,
    required this.description,
    required this.seats,
    required this.passengers,
    required this.type,
  });
}

List<Car> carList = [
  Car(
    name: "Tesla Model S",
    price: "\$80,000",
    image: "assets/images/car6.png",
    description: "A high-performance electric car with autonomous features.",
    seats: 5,
    passengers: 5,
    type: "Sedan",
  ),
  Car(
    name: "BMW M4",
    price: "\$70,000",
    image: "assets/images/car6.png",
    description: "A luxury sports coupe with incredible speed and handling.",
    seats: 4,
    passengers: 4,
    type: "Coupe",
  ),
  Car(
    name: "Audi R8",
    price: "\$150,000",
    image: "assets/images/car6.png",
    description: "A stunning supercar with a powerful V10 engine.",
    seats: 2,
    passengers: 2,
    type: "Supercar",
  ),
  Car(
    name: "Mercedes AMG GT1111",
    price: "\$120,000",
    image: "assets/images/car6.png",
    description: "A high-end performance car with a sleek design.",
    seats: 2,
    passengers: 2,
    type: "Sports Car",
  ),
    Car(
    name: "Tesla Model S",
    price: "\$80,000",
    image: "assets/images/car6.png",
    description: "A high-performance electric car with autonomous features.",
    seats: 5,
    passengers: 5,
    type: "Sedan",
  ),
  Car(
    name: "BMW M4",
    price: "\$70,000",
    image: "assets/images/car6.png",
    description: "A luxury sports coupe with incredible speed and handling.",
    seats: 4,
    passengers: 4,
    type: "Coupe", 
  ),
  Car(
    name: "Audi R8",
    price: "\$150,000",
    image: "assets/images/car6.png",
    description: "A stunning supercar with a powerful V10 engine.",
    seats: 2,
    passengers: 2,
    type: "Supercar",
  ),
];