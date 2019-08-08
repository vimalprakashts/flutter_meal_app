import 'package:flutter/material.dart';
import 'package:flutter_meal_app/widgets/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  static const routeName = "/filters";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("text"),
      ),
      drawer: MainDrawer(),
    );
  }
}
