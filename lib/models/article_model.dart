class ArticleModel {
  String author, title, description, url, imageUrl, content;
  DateTime publishedAt;

  ArticleModel(
      {this.author,
      this.title,
      this.description,
      this.url,
      this.imageUrl,
      this.content,
      this.publishedAt});
}
