import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:podberi_ru/constatns.dart';

class SlideData {
  final Color color;
  final String title;
  final String description;
  final String imagePath;
  final double rating;

  SlideData({
    required this.color,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.rating,
  });
}

class DebitCarousel extends StatelessWidget {
  final List<SlideData> slides = [
    SlideData(
      color: pgaz,
      title: 'Газпромбанк \nУмная UnionPay',
      description:
          'Бесплатная\nСнятие без % - 350 000 руб.\nДоставка 1-2 дня\nБез овердрафта',
      imagePath: 'assets/images/GazprLogo.svg',
      rating: 4.2,
    ),
    SlideData(
      color: pyellow,
      title: 'Тинькофф \nДебетовая безлимит',
      description:
          'Бесплатная\nСнятие без % - 350 000 руб.\nДоставка 1-2 дня\nБез овердрафта',
      imagePath: 'assets/images/TinkLogo.svg',
      rating: 4.5,
    ),
  ];

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
                itemCount: slides.length,
                itemBuilder: (context, index) {
                  final slide = slides[index];
                  return Padding(
                    padding: EdgeInsets.only(right: 6),
                    child: Container(
                      width: 280,
                      height: 190,
                      decoration: BoxDecoration(
                        color: slide.color,
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
                                  slide.title,
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
                                  slide.description,
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
                                  slide.imagePath,
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
                                  slide.rating.toString(),
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
