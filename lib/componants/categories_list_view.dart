import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/componants/custom%20card.dart';
import 'package:news_app/model/category%20model.dart';

class Categories_list_view extends StatelessWidget {
   Categories_list_view({super.key});
 List<CategoryModel> category=[
   CategoryModel(image:'assets/images/work.jpg' , CategoryName: 'business'),
   CategoryModel(image:'assets/images/entertaiment.jpeg' , CategoryName: 'entertainment'),
   CategoryModel(image:'assets/images/finance.jpeg' , CategoryName: 'general'),
   CategoryModel(image:'assets/images/media.jpg' , CategoryName: 'general'),
   CategoryModel(image:'assets/images/technology.webp' , CategoryName: 'technology'),

 ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.h,
      child: ListView.builder(
          itemCount: category.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)
          {
            return custimCard(category: category[index],

            );
          }
      ),
    );
  }
}
