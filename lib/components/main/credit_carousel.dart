import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:podberi_ru/constatns.dart';

class CreditCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 316,
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
                "Кредитные карты",
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
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: PageView.builder(
                controller: PageController(viewportFraction: 0.9),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 6),
                    child: Container(
                      width: 280,
                      height: 190,
                      decoration: BoxDecoration(
                        color: pyellow,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Тинькофф \nДрайв Кредитная',
                                  style: TextStyle(
                                    color: pwhite,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Geologica",
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Spacer(),
                                Text(
                                  'Лимит - 1 000 000 руб. \nБез процентов - до 55 дней\nСтоимость - 495 руб./год\nКэшбек - от 1 до 30%',
                                  style: TextStyle(
                                    color: pwhite,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Geologica",
                                    height: 1.5,
                                  ),
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 16,
                            right: 16,
                            child: Container(
                              width: 52,
                              height: 52,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                  'assets/images/TinkLogo.svg',
                                  width: 37,
                                  height: 37,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 16,
                            right: 16,
                            child: Row(
                              children: [
                                Icon(Icons.star, color: pwhite, size: 20),
                                SizedBox(width: 4),
                                Text(
                                  '4.8',
                                  style: TextStyle(
                                    color: pwhite,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Geologica",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Center(
              child: Text(
                "Показать все",
                style: TextStyle(
                  color: pblack,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Geologica",
                ),
              ),
            ),
          ),
          SizedBox(height: 21),
        ],
      ),
    );
  }
}
