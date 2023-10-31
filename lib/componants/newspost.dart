import 'package:flutter/material.dart';
import 'package:news_app/model/articles%20model.dart';
import 'package:cached_network_image/cached_network_image.dart';
class NewsPost extends StatelessWidget {
   NewsPost({super.key, required this.ArticlesModels});
  final ArticlesModel ArticlesModels;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child:
          ArticlesModels!=null ? Image.network(
            ArticlesModels.image!,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ):  CachedNetworkImage(
            imageUrl: "https://cdn.pixabay.com/photo/2017/09/25/18/56/social-media-2786261_1280.jpg",
            placeholder: (context, url) => Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Icon(Icons.error),
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          )

        ),
        SizedBox(height: 8),
        Text(ArticlesModels.title,
        maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
        Text(ArticlesModels.subtitle?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
        ),

      ],
    );
  }
}
