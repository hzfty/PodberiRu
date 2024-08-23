import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:podberi_ru/components/main_app_bar.dart';
import 'package:podberi_ru/components/main_body.dart';
import '../constatns.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: MainBody(),
      backgroundColor: pblack,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: Container(
          height: 70, // Высота BottomNavigationBar
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 6.0), // Расстояние между иконкой и текстом
                  child: SvgPicture.asset(
                    'assets/images/navigator_bar/home.svg',
                    color: _selectedIndex == 0 ? pblue : pblack,
                  ),
                ),
                label: 'Главная',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: SvgPicture.asset(
                    'assets/images/navigator_bar/katalog.svg',
                    color: _selectedIndex == 1 ? pblue : pblack,
                  ),
                ),
                label: 'Каталог',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: SvgPicture.asset(
                    'assets/images/navigator_bar/favorite.svg',
                    color: _selectedIndex == 2 ? pblue : pblack,
                  ),
                ),
                label: 'Избранное',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: SvgPicture.asset(
                    'assets/images/navigator_bar/bonuses.svg',
                    color: _selectedIndex == 3 ? pblue : pblack,
                  ),
                ),
                label: 'Бонусы',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: SvgPicture.asset(
                    'assets/images/navigator_bar/сomparison.svg',
                    color: _selectedIndex == 4 ? pblue : pblack,
                  ),
                ),
                label: 'Сравнение',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: pblue,
            unselectedItemColor: pblack,
            onTap: _onItemTapped,
            selectedLabelStyle: const TextStyle(
              fontSize: 12,
              fontFamily: 'Geologica', // Использование локального шрифта
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 12,
              fontFamily: 'Geologica', // Использование локального шрифта
            ),
          ),
        ),
      ),
    );
  }
}
