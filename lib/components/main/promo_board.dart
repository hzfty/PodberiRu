import 'package:flutter/material.dart';
import 'package:podberi_ru/constatns.dart';

class PromoBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 360,
      margin: EdgeInsets.symmetric(vertical: 2),
      decoration: BoxDecoration(
        color: pwhite,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 125,
            left: -50,
            right: -50,
            bottom: 40,
            child: Container(
              decoration: BoxDecoration(
                color: porange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  topLeft: Radius.elliptical(500, 150),
                  topRight: Radius.elliptical(500, 150),
                ),
              ),
            ),
          ),
          Positioned(
            top: 300,
            left: 0,
            right: 0,
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
                  top: 30.0,
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
                  'assets/images/sushi.png',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width - 0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  bottom: 22.0,
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
