// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'post.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
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
            backgroundColor: Color.fromARGB(255, 254, 252, 255),
          ),
          body: Consumer(builder: (context, ref, _) {
            final postsAsyncValue = ref.watch(postsProvider);
            return postsAsyncValue.when(
              data: (posts) {
                return ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    final post = posts[index];
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                          color: Color.fromARGB(255, 255, 255, 255),
                          height: 20,
                          width: double.infinity,
                          child: Text(
                            'Title: ${post.title}',
                            style: TextStyle(color: Color.fromARGB(255, 245, 244, 247)),
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
              },
              loading: () => Center(child: CircularProgressIndicator()),
              error: (error, stackTrace) => Center(child: Text('Error: $error')),
            );
          }),
        ),
      ),
    );
  }
}
