import 'package:api_testt/models/category_model.dart';
import 'package:api_testt/screens/category_news.dart';
import 'package:api_testt/widgets/article_item.dart';
import 'package:api_testt/widgets/category_item.dart';
import 'package:flutter/material.dart';

import 'models/api_service.dart';
import 'models/article_model.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatefulWidget {
  const NewsApp({super.key});

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  List<ArticleModel> article = [];

  @override
  void initState() {
    get();
    // TODO: implement initState
    super.initState();
  }

  get() async {
    article = await ApiService().getNews(category: 'general');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("News App"),
          backgroundColor: Colors.black12,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_){
                          return CategoryNews(categoryName: category[index].title, index: index);
                        }));
                      },
                      child: CategoryItem(
                          image: category[index].image,
                          title: category[index].title),
                    );
                  },
                  itemCount: category.length,
                ),
              ),
              const SizedBox(height: 15,),
              article.isEmpty
                  ? const Center(
                      heightFactor: 15, child: CircularProgressIndicator())
                 :  Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return  ArticleItem(
                              image: article[index].image!,
                              title: article[index].title!,
                              description: article[index].description!);
                        },
                        itemCount: article.length,
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
