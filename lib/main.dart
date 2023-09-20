import 'package:flutter/material.dart';
import 'package:small_apps/01.Food_app/food_app.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const FoodApp();
  }
}
