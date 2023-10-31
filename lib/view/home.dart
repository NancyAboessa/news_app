import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/componants/categories_list_view.dart';
import 'package:news_app/componants/custom%20card.dart';
import 'package:news_app/componants/newsListView.dart';
import 'package:news_app/componants/newspost.dart';
import 'package:news_app/model/articles%20model.dart';
import 'package:news_app/sevices/dio.dart';
import 'package:news_app/view/NewsListViewBuilder.dart';

class Home extends StatefulWidget {
   Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(

              'News',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),

          ],
        ),
      ),
      body:Padding(
        padding:  EdgeInsets.all(8.0.r),
        child: Column(
         children: [
           Categories_list_view(),
           SizedBox(height: 32.h,),
           SizedBox(
               height: 450.h,
               child: NewsListViewBuilder(category: 'general',)),
         ],
        ),
      ),
    );
  }
}

