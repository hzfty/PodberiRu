import 'package:flutter/material.dart';
import 'package:podberi_ru/constatns.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const SearchBox({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: pgrey,
        ),
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          //icon: SvgPicture.asset('assets/icons/search.svg'),
          hintText: 'Введите название продукта',
          hintStyle: TextStyle(color: pdarkgrey),
        ),
      ),
    );
  }
}
