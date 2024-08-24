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
      surfaceTintColor: Colors.transparent,
      backgroundColor: pwhite,
      title: Text(
        'Добрый день!',
        style: TextStyle(
          color: pblack,
          fontWeight: FontWeight.bold,
          fontFamily: "Geologica",
          fontSize: 20,
        ),
      ),
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(top: 70.0),
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
  Size get preferredSize => Size.fromHeight(137.0);
}
