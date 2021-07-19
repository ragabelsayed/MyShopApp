import 'package:flutter/material.dart';

class Product {
  final String id;
  final String title;
  final String description;
  final List<String> images;
  final List<Color> colors;
  final double rating;
  final double price;
  final bool isFavourite;
  final bool isPopular;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.price = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
  });
}
