import 'package:flutter/material.dart';
import 'package:todolistai/poloroid.dart';
import 'package:typewritertext/typewritertext.dart';

class PoemPage extends StatelessWidget {
  String title;
  String poemString;
  String assetName;
  String labelText;
  Color? backgroundColor;
  bool colorWhite;

  PoemPage({
    super.key,
    required this.title,
    required this.colorWhite,
    required this.poemString,
    required this.assetName,
    required this.labelText,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: this.backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // height: MediaQuery.of(context).size.height,
            // width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 250,
                  height: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //title
                      Text(
                        style: TextStyle(
                            color:
                                this.colorWhite ? Colors.white : Colors.black87,
                            fontSize: 25,
                            fontFamily: 'Mullish',
                            fontWeight: FontWeight.bold),
                        this.title,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //poem
                      TypeWriterText(
                        maintainSize: false,
                        text: Text(
                            style: TextStyle(
                              color: this.colorWhite
                                  ? Colors.white
                                  : Colors.black87,
                              fontSize: 20,
                              fontFamily: 'Mullish',
                              fontWeight: FontWeight.bold,
                            ),
                            this.poemString),
                        duration: Duration(milliseconds: 50),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Poloroid(
                  assetName: this.assetName,
                  labelText: this.labelText,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
