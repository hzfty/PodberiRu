import 'package:flutter/material.dart';
import 'package:podberi_ru/constatns.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _progress = 0;

  @override
  void initState() {
    super.initState();
    _simulateLoading();
  }

  void _simulateLoading() {
    Future.delayed(Duration(milliseconds: 100), () {
      setState(() {
        _progress = 20;
      });
    });
    Future.delayed(Duration(milliseconds: 200), () {
      setState(() {
        _progress = 40;
      });
    });
    Future.delayed(Duration(milliseconds: 300), () {
      setState(() {
        _progress = 60;
      });
    });
    Future.delayed(Duration(milliseconds: 400), () {
      setState(() {
        _progress = 80;
      });
    });
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _progress = 100;
      });
      Navigator.of(context).pushReplacementNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pblue,
      body: Stack(
        children: <Widget>[
          Center(
            child: SvgPicture.asset(
              'assets/images/Logo.svg',
              width: 60,
              height: 60,
            ),
          ),
          Positioned(
            right: 24,
            bottom: 30,
            child: Text(
              '${_progress.toInt()}%',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: "Geologica",
                fontSize: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
