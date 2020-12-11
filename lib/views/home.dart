import 'package:flutter/material.dart';
import 'package:flutter_news_app/helpers/data.dart';
import 'package:flutter_news_app/helpers/news_api.dart';
import 'package:flutter_news_app/models/article_model.dart';
import 'package:flutter_news_app/models/category_model.dart';
import 'package:flutter_news_app/widgets/category_tile.dart';
import 'package:flutter_news_app/widgets/news_tile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categories = List<CategoryModel>();
  List<ArticleModel> articles = List<ArticleModel>();
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    categories = getCategories();
    getNews();
  }

  getNews() async {
    articles = await NewsApi.getNews();
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('فلاتر'),
            Text(
              'أخبار',
              style: TextStyle(color: Colors.blue),
            )
          ],
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            height: 70,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: categories.length,
              itemBuilder: (ctx, index) {
                return CategoryTile(
                  category: categories[index].category,
                  categoryName: categories[index].categoryName,
                  imageUlr: categories[index].imageUrl,
                );
              },
            ),
          ),
          _loading
              ? CircularProgressIndicator()
              : Expanded(
                  child: Container(
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
                ),
        ],
      ),
    );
  }
}
