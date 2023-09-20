import 'package:flutter/material.dart';
import 'package:small_apps/Food_app/constants.dart';
import 'package:small_apps/Food_app/pages/home_screen.dart';

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FoodApp',
      theme: ThemeData(
          fontFamily: "Poppins",
          scaffoldBackgroundColor: kWhiteColor,
          primaryColor: kPrimaryColor,
          textTheme: const TextTheme(
            // headline1: const TextStyle(fontWeight: FontWeight.bold),
            // button: const TextStyle(fontWeight: FontWeight.bold),
            titleLarge: TextStyle(fontWeight: FontWeight.bold),
            // bodyText1: const TextStyle(color: kTextColor),
          )),
      home: const HomeScreen(),
    );
  }
}
