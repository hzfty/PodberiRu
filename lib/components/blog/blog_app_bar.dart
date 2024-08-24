import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constatns.dart';

class BlogAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BlogAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      surfaceTintColor: Colors.transparent,
      backgroundColor: pwhite,
      title: Text(
        'Блог',
        style: TextStyle(
          color: pblack,
          fontWeight: FontWeight.bold,
          fontFamily: "Geologica",
          fontSize: 14,
        ),
      ),
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/images/arrow.svg', // Путь к вашей кастомной иконке
          fit: BoxFit.scaleDown,
        ),
        onPressed: () {
          Navigator.of(context)
              .pop(); // Функция для возврата на предыдущий экран
        },
      ),
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(top: 65.0),
        child: Container(
          margin: EdgeInsets.all(15),
          alignment: Alignment.center,
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: pgrey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Введите название продукта',
                hintStyle: TextStyle(
                  color: pmoredarkgrey,
                  fontSize: 12.0,
                ),
                prefixIcon: null,
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 13.0),
                  child: SvgPicture.asset(
                    'assets/images/search.svg',
                    fit: BoxFit.scaleDown,
                  ),
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.fromLTRB(20.0, 12.0, 0.0, 15.0),
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
  Size get preferredSize => Size.fromHeight(112.0);
}
