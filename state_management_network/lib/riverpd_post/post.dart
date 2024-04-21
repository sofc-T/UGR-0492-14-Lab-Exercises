// posts.dart

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

final postsProvider = FutureProvider<List<Posts>>((ref) async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.org/posts'));
  if (response.statusCode == 200) {
    final jsonData = jsonDecode(response.body) as List;
    return jsonData.map((item) => Posts.fromJson(item)).toList();
  } else {
    throw Exception('Failed to load posts');
  }
});

