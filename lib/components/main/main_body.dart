import 'package:flutter/material.dart';
import 'package:podberi_ru/components/main/blog_carousel.dart';
import 'package:podberi_ru/components/main/credit_carousel.dart';
import 'package:podberi_ru/components/main/debit_carousel.dart';
import 'package:podberi_ru/components/main/offers_carousel.dart';
import 'package:podberi_ru/components/main/product_list_types.dart';
import 'package:podberi_ru/components/main/promo_board.dart';
import 'package:podberi_ru/components/main/select_bank.dart';
import 'package:podberi_ru/components/main/stories_carousel.dart';

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
          CreditCarousel(),
          SelectBank(),
          DebitCarousel(),
          PromoBoard(),
          BlogCarousel(),
        ],
      ),
    );
  }
}
