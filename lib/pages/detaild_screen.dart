import 'package:flutter/material.dart';
import 'package:medix/models/news_model.dart';

// ignore: must_be_immutable
class DetailsScreen extends StatefulWidget {
  DetailsScreen(this.data, {Key? key}) : super(key: key);
  NewsData data;
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
        199,
        211,
        164,
        255,
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(223, 194, 134, 249),
        elevation: 0.0,
        iconTheme:
            const IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  widget.data.title!,
                  style: const TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Center(
                child: Hero(
                  tag: "${widget.data.title}",
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.network(widget.data.urlToImage!),
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                widget.data.author!,
                style: const TextStyle(
                  color: Color.fromARGB(255, 20, 20, 20),
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Text(
                widget.data.date!,
                style: const TextStyle(
                  color: Color.fromARGB(255, 12, 12, 12),
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Text(
                widget.data.content!,
                style: const TextStyle(color: Color.fromARGB(255, 17, 17, 17)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
