import 'package:flutter/material.dart';
import 'package:gif_view/gif_view.dart';
import 'package:page_flip/page_flip.dart';
import 'package:todolistai/poem_page.dart';
import 'package:todolistai/poloroid.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _controller = GlobalKey<PageFlipWidgetState>();

  List<dynamic> _poempages = [
    Container(
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('cover.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.4)),
        ),
        Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Loving you through the Day",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w800,
                      fontFamily: "Cutive"),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "By your ridu",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      fontFamily: "Mullish"),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Swipe to the left to turn the page",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w800,
                      fontFamily: "Mullish"),
                ),
              ],
            ),
          ),
        ),
      ]),
    ),
    PoemPage(
        title: "My Valentine's to You",
        colorWhite: false,
        poemString:
            "Dedicated to you, Michelly Welly Hassany, my love, forever and always.",
        assetName: "flowers_red.gif",
        labelText: "us hehe",
        backgroundColor: Colors.purple.shade100),
    PoemPage(
      backgroundColor: Colors.orange.shade600,
      colorWhite: true,
      title: "Dawn",
      poemString:
          "Everyday\nAs the sun rises\nI am grateful\nBecause I have been given another day\nTo be with you",
      assetName: 'dawn.gif',
      labelText: "petals across the sky",
    ),
    PoemPage(
      backgroundColor: Colors.yellow.shade100,
      title: "Sunshine",
      colorWhite: false,
      poemString:
          "I love your smile\nYour Laugh\nAnd everything about you\nAs it warms my heart\nAnd brings me joy\n\nYou are my sunshine",
      assetName: 'sunshine.gif',
      labelText: "watering the bootiful sunflowers",
    ),
    PoemPage(
      backgroundColor: Color(0xFFEEA5A6),
      title: "A kiss in the sunset",
      colorWhite: true,
      poemString:
          "One day\nAs the sun sets\nFilling the sky with it's colors\nI want to hold you close and tell you\nI love you",
      assetName: 'Sol&Lua_Natureza.gif',
      labelText: "the bootiful sunset",
    ),
    PoemPage(
      backgroundColor: Color(0xFF1B1A55),
      colorWhite: true,
      title: "The Stars",
      poemString:
          "As I stare out my window\nAnd see the vast sky of stars\nI realize that it holds no comparison\nTo your twinkling eyes",
      assetName: 'night.gif',
      labelText: "the bootiful stars",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return PageFlipWidget(
      key: _controller,
      backgroundColor: Colors.white,
      lastPage: PoemPage(
        backgroundColor: Colors.red.shade200,
        title: "You've reached the end!",
        colorWhite: false,
        poemString:
            "THANKS FOR READING IT HEHEH\nTHIS HAS BEEN A RIDU PRODUCTION",
        assetName: 'cute_cat.gif',
        labelText: "mwah mwah mwah",
      ),
      children: <Widget>[
        for (var i = 0; i < _poempages.length; i++) _poempages[i]
      ],
    );
  }
}
