import 'package:flutter/material.dart';
import 'package:podberi_ru/router.dart';

void main() {
  runApp(const PodberiRu());
}

class PodberiRu extends StatelessWidget {
  const PodberiRu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PodberiApp',
      theme: ThemeData(fontFamily: "Geologica"),
      routes: routes,
      initialRoute: '/',
    );
    //home: MainScreen(),
  }
}
