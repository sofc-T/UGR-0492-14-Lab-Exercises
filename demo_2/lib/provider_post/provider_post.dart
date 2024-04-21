import 'package:flutter/material.dart';
import 'posts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PostsProvider(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Posts From jsonplaceholder',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
          ),
          body: Consumer<PostsProvider>(
            builder: (context, postsProvider, _) {
              // Call fetchPosts method
              postsProvider.fetchPosts();

              if (postsProvider.isEmpty) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (postsProvider.error.isNotEmpty) {
                return Center(
                  child: Text('Error: ${postsProvider.error}'),
                );
              } else {
                return ListView.builder(
                    itemCount: postsProvider.posts.length,
                    itemBuilder: (context, index) {
                      final post = postsProvider.posts[index];
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 5),
                            color: Color.fromARGB(255, 237, 235, 240),
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
                    });
              }
            },
          ),
        ),
      ),
    );
  }
}