import 'package:flutter/material.dart';
import 'package:podberi_ru/components/offers_carousel.dart';
import 'package:podberi_ru/components/product_list_types.dart';
import 'package:podberi_ru/components/stories_carousel.dart';

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          StoriesCarousel(),
          OffersCarousel(),
          ProductListTypes(),
        ],
      ),
    );
  }
}
