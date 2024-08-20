import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:podberi_ru/constatns.dart';

class ProductListTypes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Уникальные тексты для каждого прямоугольника
    final List<String> texts = [
      'Дебетовые карты',
      'Кредитные карты',
      'Микрозаймы',
      'РКО',
    ];

    // Пути к SVG-иконкам
    final List<String> svgIcons = [
      'assets/images/debt.svg',
      'assets/images/kredt.svg',
      'assets/images/microz.svg',
      'assets/images/biss.svg',
    ];

    return Container(
      width: double.infinity,
      height: 356,
      margin: EdgeInsets.symmetric(
        vertical: 2,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Center(
              child: Text(
                "Выберите тип продукта",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.w900,
                  fontFamily: "Geologica",
                ),
              ),
            ),
          ),
          SizedBox(height: 17),
          // Добавляем виджет списка прямоугольников с уникальными текстами и SVG иконками
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: List.generate(texts.length, (index) {
                return Container(
                  margin: EdgeInsets.only(
                      bottom: 6), // Уменьшение расстояния между блоками
                  padding: EdgeInsets.symmetric(
                      horizontal: 20), // Отступы для текста и иконки
                  height: 60, // Высота блоков
                  decoration: BoxDecoration(
                    color: pblue,
                    borderRadius:
                        BorderRadius.circular(10), // Закругление краев
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        texts[index],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Geologica",
                        ),
                      ),
                      SvgPicture.asset(
                        svgIcons[index],
                        width: 32,
                        height: 32,
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
