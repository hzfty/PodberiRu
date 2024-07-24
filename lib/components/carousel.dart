import 'package:flutter/material.dart';
import '../constatns.dart';

class Carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal, // Горизонтальная прокрутка
      itemCount: 3, // Количество блоков в карусели
      itemBuilder: (context, index) {
        return Container(
          width: 120, // Ширина прямоугольника
          height: 120,
          margin: EdgeInsets.all(3),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: pblue, // Цвет блоков в карусели
          ),
          child: Text(
            'Дебетовые карты с бесплатным обслуживанием',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.white, // Цвет текста
              fontFamily: "Geologica",
            ),
          ),
        );
      },
    );
  }
}
