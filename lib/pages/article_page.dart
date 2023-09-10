import 'package:flutter/material.dart';

class Article extends StatefulWidget {
  const Article({super.key});

  @override
  State<Article> createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  @override
  Widget build(BuildContext context) {
    double devHeight = MediaQuery.of(context).size.height;
    //double devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.zero,
                height: devHeight * 0.15,
                width: double.infinity,
                decoration: const ShapeDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(225, 116, 43, 186),
                          Color.fromARGB(200, 185, 108, 255)
                        ]),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)))),
                child: Stack(
                  children: [
                    Positioned(
                      top: 40,
                      right: 10,
                      child: IconButton(
                        color: Colors.white,
                        onPressed: () {},
                        icon: const Icon(Icons.menu),
                      ),
                    ),
                    const Positioned(
                      top: 40,
                      left: 20,
                      child: Text(
                        "Articles",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // const Text(
              //   "Breaking News",
              //   style: TextStyle(
              //     fontSize: 26.0,
              //     fontWeight: FontWeight.bold,
              //   ),
              //),

              const SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CarouselSlider.builder(
                    itemCount: NewsData.breakingNewsData.length,
                    itemBuilder: (context, index, id) =>
                        BreakingNewsCard(NewsData.breakingNewsData[index]),
                    options: CarouselOptions(
                      aspectRatio: 16 / 9,
                      enableInfiniteScroll: false,
                      enlargeCenterPage: true,
                    )),
              ),
              // const SizedBox(
              //   height: 10.0,
              // ),
              // const Text(
              //   "Recent News",
              //   style: TextStyle(
              //     fontSize: 26,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              const SizedBox(
                height: 10.0,
              ),
              //latest news

              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: NewsData.recentNewsData
                      .map((e) => NewsListTile(e))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
