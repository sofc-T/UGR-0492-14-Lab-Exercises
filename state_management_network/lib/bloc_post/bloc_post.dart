// posts_bloc.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'posts.dart';

class PostsBloc extends Cubit<List<Posts>> {
  PostsBloc() : super([]);

  Future<void> fetchPosts() async {
    try {
      final response =
          await http.get(Uri.parse('https://jsonplaceholder.org/posts'));
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body) as List;
        final posts = jsonData.map((item) => Posts.fromJson(item)).toList();
        emit(posts);
      } else {
        emit([]);
      }
    } catch (error) {
      emit([]);
    }
  }
}