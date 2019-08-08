import 'package:flutter/material.dart';
import 'package:flutter_meal_app/dummy-data.dart';
import 'package:flutter_meal_app/widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String categoryId;
  // final String categoryTitle;
  // CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final String categoryId = routeArgs['id'];
    final String categoryTitle = routeArgs['title'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains((categoryId));
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          var mealItem = categoryMeals[index];
          return MealItem(
            id: mealItem.id,
            title: mealItem.title,
            affordability: mealItem.affordability,
            complexity: mealItem.complexity,
            duration: mealItem.duration,
            imageURL: mealItem.imageUrl,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
