import 'package:flutter/material.dart';

class ArticleItem extends StatelessWidget {
  const ArticleItem({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Column(
        children: [
          image !=null
              ? Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        fit: BoxFit.fill, image: NetworkImage(image)),
                  ),
                ) : Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  fit: BoxFit.fill, image: NetworkImage("https://image.cnbcfm.com/api/v1/image/108042423-1727891892609-108042383-1727889284875-Screenshot_2024-10-02_at_11426_PM.webp?v=1727891966&w=1920&h=1080")),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
         title ==null ? Text('no data') : Text(title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          description ==null
              ? SingleReview(
                  reviewText: "no description",
                  style: const TextStyle(color: Colors.grey),
                )
              : SingleReview(
                  reviewText: description,
                  style: const TextStyle(color: Colors.grey),
                ),
        ],
      ),
    );
  }
}

class SingleReview extends StatefulWidget {
  const SingleReview({
    super.key,
    required this.reviewText,
    required this.style,
  });

  final String reviewText;
  final TextStyle style;

  @override
  State<SingleReview> createState() => _SingleReviewState();
}

class _SingleReviewState extends State<SingleReview> {
  bool reveal = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18.0,
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                reveal = !reveal;
              });
            },
            child: Text(
              widget.reviewText,
              maxLines: reveal ? 1 : null,
              overflow: reveal ? TextOverflow.ellipsis : null,
              style: widget.style,
            ),
          ),
        ],
      ),
    );
  }
}
