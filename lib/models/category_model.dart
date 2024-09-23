import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel ({
    required this.name,
    required this.iconPath,
    required this.boxColor
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(
      CategoryModel(
        name: 'Analogue', 
        iconPath: 'assets/icons/analog.png', 
        boxColor: Color(0xff92A3fA)
      ),
    );
    
    categories.add(
      CategoryModel(
        name: 'Digital', 
        iconPath: 'assets/icons/digital.png', 
        boxColor: Color(0xffC588F2)
      ),
    );

    categories.add(
      CategoryModel(
        name: 'Smart', 
        iconPath: 'assets/icons/smart.png', 
        boxColor: Color(0xff92A3fA)
        ),
    );

    categories.add(
      CategoryModel(
        name: 'Chronograph', 
        iconPath: 'assets/icons/chrono.png', 
        boxColor: Color(0xffC588F2)
        ),
    );
    return categories;
  }
} 
