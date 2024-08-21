import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:podberi_ru/constatns.dart';

class SelectBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height:
          266, // Увеличиваем высоту контейнера, чтобы учесть текст "Все банки"
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
                "Выгодные предложения",
                style: TextStyle(
                  color: pblack,
                  fontSize: 19,
                  fontWeight: FontWeight.w900,
                  fontFamily: "Geologica",
                ),
              ),
            ),
          ),
          SizedBox(height: 17),
          BanksCarousel(),
          SizedBox(height: 15), // Отступ между каруселью и текстом "Все банки"
          Center(
            child: Text(
              "Все банки",
              style: TextStyle(
                color: pblack,
                fontSize: 17,
                fontWeight: FontWeight.w500,
                fontFamily: "Geologica",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BanksCarousel extends StatelessWidget {
  // Список данных для каждого слайда
  final List<Map<String, String>> bankItems = [
    {
      'image': 'assets/images/SberLogo.svg', // Путь к SVG изображению
      'text': 'Сбербанк', // Текст
    },
    {
      'image': 'assets/images/TinLogo.svg',
      'text': 'Тинькофф Банк',
    },
    {
      'image': 'assets/images/AlfaLogo.svg',
      'text': 'Альфа-Банк',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140, // Высота блока
      child: PageView.builder(
        controller: PageController(
          viewportFraction: 0.38,
          initialPage: 1,
        ), // Отображение со второго слайда
        itemCount: bankItems.length, // Количество слайдов
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 3.0), // Расстояние между блоками
            child: Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                color: _getBlockColor(
                    index), // Индивидуальный цвет для каждого блока
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: SvgPicture.asset(
                        bankItems[index][
                            'image']!, // Индивидуальная SVG картинка для каждого блока
                        height: 78,
                        width: 108,
                      ),
                    ),
                  ),
                  Text(
                    bankItems[index]
                        ['text']!, // Индивидуальный текст для каждого блока
                    style: TextStyle(
                      color: pwhite,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Geologica",
                    ),
                  ),
                  SizedBox(
                      height:
                          15), // Добавляем отступ снизу, чтобы текст не прилипал к нижнему краю
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Color _getBlockColor(int index) {
    // Функция для получения индивидуального цвета для каждого блока
    switch (index) {
      case 0:
        return pgreen;
      case 1:
        return pyellow;
      case 2:
        return pred;
      default:
        return Colors.grey;
    }
  }
}
