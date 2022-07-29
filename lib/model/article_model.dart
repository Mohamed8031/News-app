class Article {
  String? status;
  int? totalResults;
  List<Articles>? articles;

  Article({
    this.status,
    this.totalResults,
    this.articles,
  });

  Article.fromJson(Map<String, dynamic> json) {
    status = json['status'] as String?;
    totalResults = json['totalResults'] as int?;
    articles = (json['articles'] as List?)
        ?.map((dynamic e) => Articles.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['status'] = status;
    json['totalResults'] = totalResults;
    json['articles'] = articles?.map((e) => e.toJson()).toList();
    return json;
  }
}

class Articles {
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  dynamic content;

  Articles({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  Articles.fromJson(Map<String, dynamic> json) {
    source = (json['source'] as Map<String, dynamic>?) != null
        ? Source.fromJson(json['source'] as Map<String, dynamic>)
        : null;
    author = json['author'] as String?;
    title = json['title'] as String?;
    description = json['description'] as String?;
    url = json['url'] as String?;
    urlToImage = json['urlToImage'] ?? "data:image/jpeg;base64,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";
    publishedAt = json['publishedAt'] as String?;
    content = json['content'] ?? "Content is not available";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['source'] = source?.toJson();
    json['author'] = author;
    json['title'] = title;
    json['description'] = description;
    json['url'] = url;
    json['urlToImage'] = urlToImage;
    json['publishedAt'] = publishedAt;
    json['content'] = content;
    return json;
  }
}

class Source {
  String? id;
  String? name;

  Source({
    this.id,
    this.name,
  });

  Source.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    name = json['name'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['name'] = name;
    return json;
  }
}