import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constatns.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: pwhite,
      title: Text(
        'Добрый день!',
        style: TextStyle(
          color: pblack,
          fontWeight: FontWeight.bold,
          fontFamily: "Geologica",
        ),
      ),
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(top: 70.0),
        child: Container(
          margin: EdgeInsets.all(15),
          alignment: Alignment.center,
          child: Container(
            height: 50, // Фиксированная высота для текстового поля
            decoration: BoxDecoration(
              color: pgrey, // Светло-серый цвет фона
              borderRadius: BorderRadius.circular(10), // Закругленные края
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Введите название продукта',
                hintStyle: TextStyle(
                  color: pmoredarkgrey, // Темно-серый цвет для hintText
                  fontSize: 12.0, // Размер шрифта 12 пунктов
                ),
                prefixIcon: null, // Убираем стандартную иконку поиска слева
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 13.0),
                  child: SvgPicture.asset(
                    'assets/images/search.svg', // Путь к вашему SVG-файлу
                    fit: BoxFit.scaleDown,
                  ),
                ), // Добавляем иконку справа
                border: InputBorder.none, // Убираем границу
                contentPadding: EdgeInsets.fromLTRB(
                    20.0, 13.0, 0.0, 15.0), // Отступ слева для hintText
              ),
            ),
          ),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(137.0);
}
