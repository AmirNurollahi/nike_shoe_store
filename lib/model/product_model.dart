import 'package:flutter/material.dart';

class Product {
  String name;
  String image;
  String price;
  String rating;
  Color bgColor;

  Product({
    required this.name,
    required this.image,
    required this.price,
    required this.rating,
    required this.bgColor,
  });
}

List<Product> productList = [
  Product(
      name: 'Air Jordan Blue',
      image: 'assets/images/blue1.png',
      price: '\$89.75',
      rating: '4.5',
      bgColor: Colors.blue),
  Product(
      name: 'Air Jordan Black',
      image: 'assets/images/black1.png',
      price: '\$56.5',
      rating: '1.2',
      bgColor: Colors.red),
  Product(
      name: 'Air Jordan Yellow',
      image: 'assets/images/yellow2.png',
      price: '\$105.25',
      rating: '3.6',
      bgColor: Colors.yellow),
  Product(
      name: 'Air Jordan Orange',
      image: 'assets/images/orange2.png',
      price: '\$200.00',
      rating: '2.6',
      bgColor: Colors.orange),
];
