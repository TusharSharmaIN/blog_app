class Blog {
  final String id;
  final String blogPosterId;
  final String title;
  final String content;
  final String imageUrl;
  final List<String> topics;
  final DateTime updatedAt;
  final String? blogPosterName;

  Blog({
    required this.id,
    required this.blogPosterId,
    required this.title,
    required this.content,
    required this.imageUrl,
    required this.topics,
    required this.updatedAt,
    this.blogPosterName,
  });
}
