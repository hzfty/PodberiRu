import 'package:flutter/material.dart';
import 'package:podberi_ru/components/main_app_bar.dart';
import 'package:podberi_ru/components/main_body.dart';
import '../constatns.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: MainAppBar(),
        body: MainBody(),
        backgroundColor: pblack,
      ),
    );
  }
}
