import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/componants/newspost.dart';
import 'package:news_app/model/articles%20model.dart';
import 'package:news_app/sevices/dio.dart';

class NewsListView extends StatelessWidget {
   NewsListView({super.key,required this.articles});

  List<ArticlesModel> articles=[];

  @override
  Widget build(BuildContext context) {
    return
      ListView.builder  (
        itemCount: articles.length,
        itemBuilder: (context,index){
      return NewsPost(ArticlesModels: articles[index],);
    });
  }
}
