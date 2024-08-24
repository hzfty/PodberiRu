import 'package:flutter/material.dart';
import 'package:podberi_ru/constatns.dart';

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 356,
      margin: EdgeInsets.symmetric(
        vertical: 2,
      ),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 220,
                  height: 230,
                  decoration: BoxDecoration(
                    color: pblue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 135,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20)),
                          image: DecorationImage(
                            image: AssetImage("assets/images/news1.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Центральный банк\nподнимает ставку, чтобы\nдушить экономику",
                          style: TextStyle(
                            color: pwhite,
                            fontSize: 14,
                            fontFamily: "Geologica",
                            height: 1.3,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 6),
                Container(
                  width: 220,
                  height: 230,
                  decoration: BoxDecoration(
                    color: pblue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 135,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20)),
                          image: DecorationImage(
                            image: AssetImage("assets/images/news2.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Налоги: Меньше знаешь\nзначит, больше ешь",
                          style: TextStyle(
                            color: pwhite,
                            fontSize: 14,
                            fontFamily: "Geologica",
                            height: 1.3,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2),
          Container(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/blogscreen');
                },
                child: Text(
                  "Читать блог",
                  style: TextStyle(
                    color: pblack,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Geologica",
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
