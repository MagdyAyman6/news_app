import 'package:api_testt/screens/category_news.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatefulWidget {
  const CategoryItem({super.key, required this.image, required this.title});
  final String image;
  final String title;

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  widget.image),
            )),
        child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.black26
            ),
            child: Text(widget.title,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
      ),
    );
  }
}
