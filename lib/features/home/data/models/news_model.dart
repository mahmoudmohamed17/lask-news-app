import 'package:lask_news_app/features/home/domain/repositories/news_entity.dart';

class NewsModel extends NewsEntity {
  String? articleId;
  String? title;
  String? link;
  List<String>? keywords;
  List<String>? creator;
  dynamic videoUrl;
  String? description;
  String? content;
  String? pubDate;
  String? pubDateTz;
  String? imageUrl;
  String? sourceId;
  int? sourcePriority;
  String? sourceName;
  String? sourceUrl;
  String? sourceIcon;
  String? language;
  List<String>? country;
  List<String>? category;
  String? aiTag;
  String? sentiment;
  String? sentimentStats;
  String? aiRegion;
  String? aiOrg;
  bool? duplicate;

  NewsModel({
    this.articleId,
    this.title,
    this.link,
    this.keywords,
    this.creator,
    this.videoUrl,
    this.description,
    this.content,
    this.pubDate,
    this.pubDateTz,
    this.imageUrl,
    this.sourceId,
    this.sourcePriority,
    this.sourceName,
    this.sourceUrl,
    this.sourceIcon,
    this.language,
    this.country,
    this.category,
    this.aiTag,
    this.sentiment,
    this.sentimentStats,
    this.aiRegion,
    this.aiOrg,
    this.duplicate,
  }) : super(
            articleTitle: title ?? 'NO TITLE',
            articleDescription: description ?? 'NO DESCRIPTION',
            image: imageUrl ?? '',
            creationDate: pubDate ?? '',
            author: creator?.first ?? 'NO AUTHOR',
            url: link ?? '',
            articleCategory: category?.first ?? 'NO CATEGORY');

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        articleId: json['article_id'] as String?,
        title: json['title'] as String?,
        link: json['link'] as String?,
        keywords: json['keywords'] as dynamic,
        creator: json['creator'] as List<String>?,
        videoUrl: json['video_url'] as dynamic,
        description: json['description'] as dynamic,
        content: json['content'] as String?,
        pubDate: json['pubDate'] as String?,
        pubDateTz: json['pubDateTZ'] as String?,
        imageUrl: json['image_url'] as String?,
        sourceId: json['source_id'] as String?,
        sourcePriority: json['source_priority'] as int?,
        sourceName: json['source_name'] as String?,
        sourceUrl: json['source_url'] as String?,
        sourceIcon: json['source_icon'] as String?,
        language: json['language'] as String?,
        country: json['country'] as List<String>?,
        category: json['category'] as List<String>?,
        aiTag: json['ai_tag'] as String?,
        sentiment: json['sentiment'] as String?,
        sentimentStats: json['sentiment_stats'] as String?,
        aiRegion: json['ai_region'] as String?,
        aiOrg: json['ai_org'] as String?,
        duplicate: json['duplicate'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'article_id': articleId,
        'title': title,
        'link': link,
        'keywords': keywords,
        'creator': creator,
        'video_url': videoUrl,
        'description': description,
        'content': content,
        'pubDate': pubDate,
        'pubDateTZ': pubDateTz,
        'image_url': imageUrl,
        'source_id': sourceId,
        'source_priority': sourcePriority,
        'source_name': sourceName,
        'source_url': sourceUrl,
        'source_icon': sourceIcon,
        'language': language,
        'country': country,
        'category': category,
        'ai_tag': aiTag,
        'sentiment': sentiment,
        'sentiment_stats': sentimentStats,
        'ai_region': aiRegion,
        'ai_org': aiOrg,
        'duplicate': duplicate,
      };
}
