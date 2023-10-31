import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/componants/newsListView.dart';
import 'package:news_app/componants/newspost.dart';
import 'package:news_app/model/articles%20model.dart';
import 'package:news_app/sevices/dio.dart';

class NewsListViewBuilder extends StatefulWidget {
  const   NewsListViewBuilder({super.key, required this.category});
   final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
 var future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsServices(Dio()).GetTopHeadLine(
      category: widget.category,
    ) ;
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticlesModel>>(
        future:  future,
        builder:(context,snapshot){
          if (snapshot.hasData) {
            return NewsListView(
              articles:snapshot.data !,
            );

          }else if(snapshot.hasError){
          return  Text('Oops there was an error , try later');

          }else
           return Center(child: CircularProgressIndicator());

        });


    // return isloading?
    // Center(child: CircularProgressIndicator()):
    // articles.isNotEmpty ?
    // NewsListView(
    //   articles:articles,
    // ) :Expanded(
    //   child: ListView(
    //     children: [
    //       Text('Oops there was an error , try later'),
    //     ],
    //   ),
    // ) ;
  }
}
