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
      // debugShowCheckedModeBanner: false,
      // title: 'Food App',
      // theme: ThemeData(
      //   primaryColor: pblue,
      //   scaffoldBackgroundColor: Colors.white,
      //   textTheme: TextTheme(
      //     bodyLarge: TextStyle(color: pdarkgrey),
      //     bodyMedium: TextStyle(color: pyellow),
      title: 'PodberiApp',
      theme: ThemeData(fontFamily: "Geologica"),
      routes: routes,
      initialRoute: '/',
    );
    //home: MainScreen(),
  }
}
