import 'package:dio/dio.dart';
import 'package:news_app/model/articles%20model.dart';

  class NewsServices {

  final Dio dio;
  NewsServices(this.dio);

 Future<List<ArticlesModel>> GetTopHeadLine({required String category })async{
  try {
  var response= await dio.get(
      'https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=998eed629f3e43368a497fa0b88d1513');
     Map<String,dynamic>  jasonData= response.data;
      List<dynamic> articles = jasonData['articles'];
      List<ArticlesModel>articlesList=[];
  for (var article in articles) {
    ArticlesModel articleModel = ArticlesModel.fromJson(article);
    articlesList.add(articleModel);
  }

  return articlesList;
  } on Exception catch (e) {
    return [];
  }
  }
}