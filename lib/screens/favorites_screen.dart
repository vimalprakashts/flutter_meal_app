import 'package:flutter/material.dart';
import 'package:flutter_meal_app/models/meal.dart';
import 'package:flutter_meal_app/widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> _favoriteMeals;
  FavoritesScreen(this._favoriteMeals);

  @override
  Widget build(BuildContext context) {
    return _favoriteMeals.isEmpty
        ? Center(
            child: Text("You have no favorites yet - start adding some!"),
          )
        : ListView.builder(
            itemBuilder: (ctx, index) {
              var mealItem = _favoriteMeals[index];
              return MealItem(
                id: mealItem.id,
                title: mealItem.title,
                affordability: mealItem.affordability,
                complexity: mealItem.complexity,
                duration: mealItem.duration,
                imageURL: mealItem.imageUrl,
              );
            },
            itemCount: _favoriteMeals.length,
          );
  }
}
