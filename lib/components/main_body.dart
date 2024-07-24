import 'package:flutter/material.dart';
import 'package:podberi_ru/components/carousel.dart';

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity, // Ширина прямоугольника
          height: 150, // Высота прямоугольника
          margin: EdgeInsets.symmetric(
            vertical: 2,
          ), // Отступы сверху и снизу в 2 пикселя
          padding: EdgeInsets.all(15), // Отступы
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
