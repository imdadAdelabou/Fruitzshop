import 'package:fruitzshop/Models/Combo.dart';
import 'package:flutter/material.dart';

List<String> catList = [
  "Lpc",
  "Populaire",
  "New combo",
  "Top",
];

List<Combo> productList = [
  Combo(
    id: "1",
    nameCombo: "Quinoa Fruit Salad",
    imageCombo:
        "assets/images/breakfast-quinoa-and-red-fruit-salad-134061-1-removebg-preview 1.png",
    couleur: Color(0xFFFFFAEB),
    price: "20,000",
  ),
  Combo(
    id: "2",
    nameCombo: "Tropical fruit salad",
    imageCombo:
        "assets/images/Best-Ever-Tropical-Fruit-Salad8-WIDE-removebg-preview 1.png",
    couleur: Color(0xFFFEF0F0),
    price: "20,000",
  ),
  Combo(
    id: "3",
    nameCombo: "Melon fruit salad",
    imageCombo:
        "assets/images/breakfast-quinoa-and-red-fruit-salad-134061-1-removebg-preview 1.png",
    couleur: Color(0xFFF1EFF6),
    price: "20,000",
  ),
];
