import 'package:flutter/material.dart';
import 'package:medix/models/news_model.dart';
import 'package:medix/pages/detaild_screen.dart';

// ignore: must_be_immutable
class NewsListTile extends StatefulWidget {
  NewsListTile(this.data, {Key? key}) : super(key: key);
  NewsData data;
  @override
  State<NewsListTile> createState() => _NewsListTileState();
}

class _NewsListTileState extends State<NewsListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NewsListTile(widget.data),
              // builder: (context) => DetailsScreen(widget.data),
            ));
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 20.0),
        padding: const EdgeInsets.all(7.0),
        height: 130,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(26.0),
            border: Border.all(color: Colors.purple)),
        child: Row(
          children: [
            Flexible(
              flex: 3,
              child: Hero(
                tag: "${widget.data.title}",
                child: Container(
                  height: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(widget.data.urlToImage!),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Flexible(
                flex: 5,
                child: Column(
                  children: [
                    Text(
                      widget.data.title!,
                      style: const TextStyle(
                          color: Colors.purple, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(widget.data.content!,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.purple,
                        ))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
