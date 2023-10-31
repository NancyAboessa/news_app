import 'package:flutter/material.dart';
import 'package:news_app/view/NewsListViewBuilder.dart';

class CategoryView extends StatelessWidget {
   CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:       NewsListViewBuilder(category: category,),

    );
  }
}
