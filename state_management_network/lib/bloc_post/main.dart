import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'posts.dart';
import 'bloc_post.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => PostsBloc()..fetchPosts(),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Posts From jsonplaceholder',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Color.fromARGB(255, 253, 251, 255),
          ),
          body: BlocBuilder<PostsBloc, List<Posts>>(
            builder: (context, posts) {
              if (posts.isEmpty) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    final post = posts[index];
                    return Column(
                      children: [
                        Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                          color: Color.fromARGB(255, 235, 233, 238),
                          height: 20,
                          width: double.infinity,
                          child: Text(
                            'Title: ${post.title}',
                            style: TextStyle(
                                color: Color.fromARGB(255, 245, 244, 247)),
                          ),
                        ),
                        SizedBox(
                          height: 100,
                          child: Image.network(post.image),
                        ),
                        Container(
                          margin: EdgeInsets.all(30),
                          child: ListTile(
                            subtitle: Text(post.content),
                            tileColor: Color.fromARGB(255, 240, 239, 241),
                          ),
                        ),
                      ],
                    );
                  },
                );
              }
            },
          ),
        ),
      ),
    );
  }
}