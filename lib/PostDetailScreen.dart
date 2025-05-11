import 'package:flutter/material.dart';
import 'PostListWidget.dart'; // Make sure this matches the actual file path

class PostDetailScreen extends StatelessWidget {
  final Post post;

  const PostDetailScreen({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Post #${post.id}')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView( // to handle long text
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.title,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Text(post.body, style: const TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
