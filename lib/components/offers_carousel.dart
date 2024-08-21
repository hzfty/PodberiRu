import 'package:flutter/material.dart';
import 'package:podberi_ru/constatns.dart';

class OffersCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 341,
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
          Carousel(),
        ],
      ),
    );
  }
}

class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  PageController _pageController = PageController(
    initialPage: 1,
    viewportFraction: 0.8,
  );
  int _currentPage = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 220,
          child: PageView.builder(
            controller: _pageController,
            itemCount: 4,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              bool isCurrentPage = index == _currentPage;

              return Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 6),
                  width: isCurrentPage ? 330 : 300,
                  height: isCurrentPage ? 220 : 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        pblack.withOpacity(1),
                        pblack.withOpacity(0.98),
                        pblack.withOpacity(0.95),
                        pblack.withOpacity(0.98),
                        pblack.withOpacity(1),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 20,
                        left: 20,
                        right: 20,
                        child: Text(
                          "Тинькофф Black -\nповышенный кэшбек на\nвыбранную категорию",
                          style: TextStyle(
                            fontFamily: 'Geologica',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 20,
                        child: Text(
                          "ПОДРОБНЕЕ",
                          style: TextStyle(
                            fontFamily: 'Geologica',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Image.asset(
                          'assets/images/tink.png',
                          width: 210,
                          height: 140,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 15),
        PageControls(currentPage: _currentPage, pageCount: 4),
      ],
    );
  }
}

class PageControls extends StatelessWidget {
  final int currentPage;
  final int pageCount;

  PageControls({required this.currentPage, required this.pageCount});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(pageCount, (index) {
        bool isActive = index == currentPage;

        return AnimatedContainer(
          duration: Duration(milliseconds: 300),
          margin: EdgeInsets.symmetric(horizontal: 4),
          width: isActive ? 10 : 8,
          height: isActive ? 10 : 8,
          decoration: BoxDecoration(
            color: isActive ? pblack : pmoredarkgrey,
            shape: BoxShape.circle,
          ),
        );
      }),
    );
  }
}
