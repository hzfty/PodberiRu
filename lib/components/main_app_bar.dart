import 'package:flutter/material.dart';
import '../constatns.dart';

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
        padding: const EdgeInsets.only(top: 70.0), // Отступ для текста
        child: Container(
          margin: EdgeInsets.all(15),
          alignment: Alignment.center,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Введите название продукта',
              hintStyle: TextStyle(color: pmoredarkgrey),
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
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
