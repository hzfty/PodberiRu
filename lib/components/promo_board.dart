import 'package:flutter/material.dart';
import 'package:podberi_ru/constatns.dart';

class PromoBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width, // ширина по всей области экрана
      height: 360, // фиксированная высота
      margin: EdgeInsets.symmetric(vertical: 2),
      decoration: BoxDecoration(
        color: pwhite,
        borderRadius: BorderRadius.circular(20), // закругленные края
      ),
      child: Stack(
        children: [
          Positioned(
            top:
                125, // Сдвиг вниз, чтобы оранжевый фон захватил часть белого квадрата
            left: -50, // Расширение эллипса влево за границы белого квадрата
            right: -50, // Расширение эллипса вправо за границы белого квадрата
            bottom: 40,
            child: Container(
              decoration: BoxDecoration(
                color: porange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  topLeft: Radius.elliptical(500, 150), // Более широкий эллипс
                  topRight: Radius.elliptical(500, 150),
                ),
              ),
            ),
          ),
          Positioned(
            top:
                300, // Сдвиг вниз, чтобы оранжевый фон захватил часть белого квадрата
            left: 0, // Расширение эллипса влево за границы белого квадрата
            right: 0, // Расширение эллипса вправо за границы белого квадрата
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: porange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top:
                      30.0, // Отступ заголовка от верхнего края белого квадрата
                  left: 32.0,
                  right: 32.0,
                ),
                child: Text(
                  'Бесплатные промокоды на вкусные и любимые тематики',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: pblack,
                    fontSize: 19,
                    fontWeight: FontWeight.w900,
                    fontFamily: "Geologica",
                    height: 1.2,
                  ),
                ),
              ),
              Spacer(),
              Container(
                child: Image.asset(
                  'assets/images/sushi.png', // Замените на путь к вашей картинке
                  fit: BoxFit.cover, // Растянуть картинку на всю ширину
                  width: MediaQuery.of(context).size.width -
                      0, // Ширина с учетом отступов
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 22.0, // Отступ текста от картинки
                  bottom: 22.0, // Отступ текста от нижнего края белого квадрата
                ),
                child: Text(
                  'Подробнее',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: pwhite,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
