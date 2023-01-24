import 'package:flutter/material.dart';
import 'package:udemy_meals_app/category_item.dart';
import 'package:udemy_meals_app/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Meals App'),
        ),
        body: GridView(
          padding: const EdgeInsets.all(15),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          children: DUMMY_CATEGORIES
              .map((category) => CategoryItem(
                    id: category.id,
                    title: category.title,
                    color: category.color,
                  ))
              .toList(),
        ));
  }
}
