import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udemy_meals_app/categories_screen.dart';

import 'category_meals_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.raleway().fontFamily,
        textTheme: GoogleFonts.ralewayTextTheme().copyWith(
            titleMedium: GoogleFonts.raleway(
                textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ))),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const CategoriesScreen(),
        '/categories-meals': (context) => const CategoryMealsScreen(),
      },
    );
  }
}
