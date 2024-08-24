import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:podberi_ru/constatns.dart';

class SelectBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 266,
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
          SizedBox(height: 15),
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
  final List<Map<String, String>> bankItems = [
    {
      'image': 'assets/images/SberLogo.svg',
      'text': 'Сбербанк',
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
      height: 135,
      child: PageView.builder(
        controller: PageController(
          viewportFraction: 0.35,
          initialPage: 1,
        ),
        itemCount: bankItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3.0),
            child: Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                color: _getBlockColor(index),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: SvgPicture.asset(
                        bankItems[index]['image']!,
                        height: 78,
                        width: 108,
                      ),
                    ),
                  ),
                  Text(
                    bankItems[index]['text']!,
                    style: TextStyle(
                      color: pwhite,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Geologica",
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Color _getBlockColor(int index) {
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
