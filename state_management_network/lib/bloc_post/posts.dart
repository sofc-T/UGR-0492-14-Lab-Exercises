class Posts {
  final int id;
  final int userId;
  final String slug;
  final String url;
  final String title;
  final String content;
  final String image;
  final String thumbnail;
  final String category;
  final String publishedAt;
  final String updatedAt;

  Posts({
    required this.id,
    required this.userId,
    required this.slug,
    required this.url,
    required this.title,
    required this.content,
    required this.image,
    required this.thumbnail,
    required this.category,
    required this.publishedAt,
    required this.updatedAt,
  });

  factory Posts.fromJson(Map<String, dynamic> json) {
    return Posts(
      id: json['id'] ?? 0,
      userId: json['userId'] ?? 0,
      slug: json['slug'] ?? '',
      url: json['url'] ?? '',
      title: json['title'] ?? '',
      content: json['content'] ?? '',
      image: json['image'] ?? '',
      thumbnail: json['thumbnail'] ?? '',
      category: json['category'] ?? '',
      publishedAt: json['publishedAt'] ?? '',
      updatedAt: json['updatedAt'] ?? '',
    );
  }
}