import 'package:flutter/material.dart';
import 'package:podberi_ru/constatns.dart';

class StoriesCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      margin: EdgeInsets.symmetric(
        vertical: 2,
      ),
      padding: EdgeInsets.only(top: 15, bottom: 15, left: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            width: 120,
            height: 120,
            margin: EdgeInsets.all(3),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: pblue,
            ),
            child: Text(
              'Дебетовые карты с бесплатным обслуживанием',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: "Geologica",
              ),
            ),
          );
        },
      ),
    );
  }
}
