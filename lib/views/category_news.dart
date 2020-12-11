import 'package:flutter/material.dart';
import 'package:flutter_news_app/helpers/news_api.dart';
import 'package:flutter_news_app/models/article_model.dart';
import 'package:flutter_news_app/widgets/news_tile.dart';

class CategoryNews extends StatefulWidget {
  final String category;
  final String categoryName;

  CategoryNews(this.category,this.categoryName);

  @override
  _CategoryNewsState createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  List<ArticleModel> articles = List<ArticleModel>();

  bool _loading = true;

  @override
  void initState() {
    super.initState();
    getNews();
  }

  getNews() async {
    articles = await NewsApi.getCategoryNews(widget.category);
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('ال'+widget.categoryName),
            SizedBox(width: 2,),
            Text(
              'أخبار ',
              style: TextStyle(color: Colors.blue),
            )
          ],
        ),
        elevation: 0,
      ),
      body: _loading
          ? Center(child: CircularProgressIndicator())
          : Container(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: articles.length,
                itemBuilder: (ctx, index) {
                  return NewsTile(
                    title: articles[index].title,
                    description: articles[index].description,
                    imageUrl: articles[index].imageUrl,
                    newsUrl: articles[index].url,
                    time: articles[index].publishedAt,
                  );
                },
              ),
            ),
    );
  }
}
