import 'package:flutter/material.dart';

// food item
class Food {
  final String name;            // cheese burger
  final String description;     //a burger full of cheese
  final String image;           // lib/images/cheese_burger.png
  final double price;           // 4.99
  final FoodCategory category;  // burger
  List<Addon> availableAddons;  // [extra cheese, sauce, patty]

  Food({
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}

// categories
enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

// Food addons
class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  });
}
