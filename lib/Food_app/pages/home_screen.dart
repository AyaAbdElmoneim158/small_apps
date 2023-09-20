import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:small_apps/Food_app/constants.dart';
import 'package:small_apps/Food_app/pages/details_screen.dart';
import 'package:small_apps/Food_app/widgets/category_title.dart';
import 'package:small_apps/Food_app/widgets/food_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: const EdgeInsets.all(10),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor.withOpacity(.26),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor,
          ),
          child: SvgPicture.asset("assets/icons/plus.svg"),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 50),
            child: Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                "assets/icons/menu.svg",
                height: 11,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Simple way to find \nTasty food",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                CategoryTitle(title: "All", active: true),
                CategoryTitle(title: "Italian"),
                CategoryTitle(title: "Asian"),
                CategoryTitle(title: "Chinese"),
                CategoryTitle(title: "Burgers"),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: kBorderColor),
            ),
            child: SvgPicture.asset("assets/icons/search.svg"),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                FoodCard(
                  ingredient: "",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const DetailsScreen();
                      }),
                    );
                  },
                  title: "Vegan salad bowl",
                  image: "assets/images/image_1.png",
                  price: 20,
                  calories: "420Kcal",
                  description:
                      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ",
                ),
                FoodCard(
                  ingredient: "",
                  press: () {},
                  title: "Vegan salad bowl",
                  image: "assets/images/image_2.png",
                  price: 20,
                  calories: "420Kcal",
                  description:
                      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ",
                ),
                const SizedBox(width: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
