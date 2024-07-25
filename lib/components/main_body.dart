import 'package:flutter/material.dart';
import 'package:podberi_ru/components/carousel.dart';

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 150,
          margin: EdgeInsets.symmetric(
            vertical: 2,
          ),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Carousel(),
        ),
      ],
    );
  }
}
