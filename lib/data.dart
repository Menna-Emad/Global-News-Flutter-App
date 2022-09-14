
class NewsResponse {
  NewsResponse({
    String? status,
    int? totalResults,
    List<Articles>? articles,}){
    _status = status;
    _totalResults = totalResults;
    _articles = articles;
  }

  NewsResponse.fromJson(dynamic json) {
    _status = json['status'];
    _totalResults = json['totalResults'];
    if (json['articles'] != null) {
      _articles = [];
      json['articles'].forEach((v) {
        _articles?.add(Articles.fromJson(v));
      });
    }
  }
  String? _status;
  int? _totalResults;
  List<Articles>? _articles;
  NewsResponse copyWith({  String? status,
    int? totalResults,
    List<Articles>? articles,
  }) => NewsResponse(  status: status ?? _status,
    totalResults: totalResults ?? _totalResults,
    articles: articles ?? _articles,
  );
  String? get status => _status;
  int? get totalResults => _totalResults;
  List<Articles>? get articles => _articles;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['totalResults'] = _totalResults;
    if (_articles != null) {
      map['articles'] = _articles?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}
final List<String> sections = [
  "World",
  "Bussiness",
  "Politics",
  "Sports",
  "Science"
];

class Post {
  final String title;
  final int time;
  final String imageUrl;
  final String story;

  Post({required this.imageUrl, required this.title, required this.time, required this.story});
}

class Articles {
  Articles({
  Source? source,
  dynamic author,
  String? title,
  String? description,
  String? url,
  String? urlToImage,
  String? publishedAt,
  dynamic content,}){
  _source = source;
  _author = author;
  _title = title;
  _description = description;
  _url = url;
  _urlToImage = urlToImage;
  _publishedAt = publishedAt;
  _content = content;
  }

  Articles.fromJson(dynamic json) {
  _source = json['source'] != null ? Source.fromJson(json['source']) : null;
  _author = json['author'];
  _title = json['title'];
  _description = json['description'];
  _url = json['url'];
  _urlToImage = json['urlToImage'];
  _publishedAt = json['publishedAt'];
  _content = json['content'];
  }
  Source? _source;
  dynamic _author;
  String? _title;
  String? _description;
  String? _url;
  String? _urlToImage;
  String? _publishedAt;
  dynamic _content;
  Articles copyWith({  Source? source,
  dynamic author,
  String? title,
  String? description,
  String? url,
  String? urlToImage,
  String? publishedAt,
  dynamic content,
  }) => Articles(  source: source ?? _source,
  author: author ?? _author,
  title: title ?? _title,
  description: description ?? _description,
  url: url ?? _url,
  urlToImage: urlToImage ?? _urlToImage,
  publishedAt: publishedAt ?? _publishedAt,
  content: content ?? _content,
  );
  Source? get source => _source;
  dynamic get author => _author;
  String? get title => _title;
  String? get description => _description;
  String? get url => _url;
  String? get urlToImage => _urlToImage;
  String? get publishedAt => _publishedAt;
  dynamic get content => _content;

  Map<String, dynamic> toJson() {
  final map = <String, dynamic>{};
  if (_source != null) {
  map['source'] = _source?.toJson();
  }
  map['author'] = _author;
  map['title'] = _title;
  map['description'] = _description;
  map['url'] = _url;
  map['urlToImage'] = _urlToImage;
  map['publishedAt'] = _publishedAt;
  map['content'] = _content;
  return map;
  }

  }

  /// id : null
  /// name : "Fal3arda.com"
  class Source {
  Source({
  dynamic id,
  String? name,}){
  _id = id;
  _name = name;
  }

  Source.fromJson(dynamic json) {
  _id = json['id'];
  _name = json['name'];
  }
  dynamic _id;
  String? _name;
  Source copyWith({  dynamic id,
  String? name,
  }) => Source(  id: id ?? _id,
  name: name ?? _name,
  );
  dynamic get id => _id;
  String? get name => _name;

  Map<String, dynamic> toJson() {
  final map = <String, dynamic>{};
  map['id'] = _id;
  map['name'] = _name;
  return map;
  }

  }



List<Post> topStories = [
  Post(
      imageUrl: "assets/images/corona news.jpg",
      time: 2,
      title:
      "British woman calls ex-husband's new wife horse on FB. Gets 2 years in jail, Rs 45 lakh fine",
      story:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
  Post(
    imageUrl: "assets/images/mars.jpg",
    story:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    time: 1,
    title: "Billions of years ago Mars had big, wide, intense rivers",
  ),
  Post(
      imageUrl: "assets/images/food.jpg",
      story:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      time: 3,
      title: "Traders burn Chinese goods ahead of Holi"),
];

List<Post> moreTopStories = [
  Post(
      imageUrl: "assets/images/ball.png",
      time: 2,
      title:
      "British woman calls ex-husband's new wife horse on FB. Gets 2 years in jail, Rs 45 lakh fine",
      story:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
  Post(
    imageUrl: "assets/images/ball.png",
    story:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    time: 1,
    title: "Billions of years ago Mars had big, wide, intense rivers",
  ),
  Post(
      imageUrl: "assets/images/ball.png",
      story:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      time: 3,
      title: "Traders burn Chinese goods ahead of Holi"),
];

