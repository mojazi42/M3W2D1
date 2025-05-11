import 'package:flutter/material.dart';
import 'PostListWidget.dart'; // <-- ensure this path is correct

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // <-- add const

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Public API ListView',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const PostListWidget(), // now PostListWidget includes its own Scaffold
    );
  }
}
