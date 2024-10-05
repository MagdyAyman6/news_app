import 'package:api_testt/models/category_model.dart';
import 'package:api_testt/widgets/article_item.dart';
import 'package:flutter/material.dart';

import '../models/api_service.dart';
import '../models/article_model.dart';

class CategoryNews extends StatefulWidget {
   CategoryNews({super.key, required this.categoryName, required this.index});
   final String categoryName;
   final int index;

  @override
  State<CategoryNews> createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  List<ArticleModel> article = [];
   @override
   void initState() {
     get(widget.index);
     // TODO: implement initState
     super.initState();
   }

   Future <void> get(int index) async {
     article = await ApiService().getNews(category:category[index].title
         );
     setState(() {});
   }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(category[widget.index].title),
        backgroundColor: Colors.black12,
      ),
      body: article.isEmpty
          ? const Center(
          heightFactor: 15, child: CircularProgressIndicator())
          :  Expanded(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return  ArticleItem(
                image: article[index].image!,
                title: article[index].title,
                description: article[index].description!);
          },
          itemCount: article.length,
        ),
      ),
    );
  }
}
