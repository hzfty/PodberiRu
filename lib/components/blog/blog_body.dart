import 'package:flutter/material.dart';
import 'package:podberi_ru/components/blog/news_list.dart';

class BlogBody extends StatelessWidget {
  const BlogBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          NewsList(),
        ],
      ),
    );
  }
}
