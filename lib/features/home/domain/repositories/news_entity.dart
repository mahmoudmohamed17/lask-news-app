class NewsEntity {
  final String articleTitle;
  final String articleDescription;
  final String image;
  final String creationDate;
  final String author;
  final String url;
  final String articleCategory;
  final bool isLiked;
  final bool isBookmarked;

  NewsEntity(
      {required this.articleTitle,
      required this.articleDescription,
      required this.image,
      required this.creationDate,
      required this.author,
      required this.url,
      required this.articleCategory,
       this.isLiked = false,
       this.isBookmarked = false});
}
