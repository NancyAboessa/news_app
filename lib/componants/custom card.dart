import 'package:flutter/material.dart';
import 'package:news_app/model/category%20model.dart';
import 'package:news_app/view/category%20view.dart';

class custimCard extends StatelessWidget {
   custimCard({super.key, required this.category});
final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context){
          return CategoryView (category: category.CategoryName,);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16,),
        child: Container(
          height: 90,
          width: 195,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(category.image,
                ),
                fit: BoxFit.fill
            ),
          ),
          child: Center(
            child: Text(
              category.CategoryName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),

        ),
      ),
    );
  }
}
