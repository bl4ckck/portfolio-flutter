import 'package:flutter/material.dart';
import 'package:portfolio/helpers/HexColor.dart';

class TextStroke extends StatelessWidget {
  const TextStroke(this.text, {Key key, this.color, this.underline, this.fontSize, this.textCenter})
      : super(key: key);

  final String text;
  final String color;
  final bool underline;
  final int fontSize;
  final bool textCenter;

  @override
  Widget build(BuildContext context) {
    return Text(
      "$text",
      textAlign: (textCenter == null) ? TextAlign.start : TextAlign.center,
      style: TextStyle(
          fontSize: (fontSize == null) ? 24 : fontSize,
          letterSpacing: 8,
          color: Colors.white,
          shadows: [
            Shadow(
                // bottomLeft
                offset: Offset(-1.3, -1.3),
                color: HexColor((color == null) ? '#B2BD16' : "$color")),
            Shadow(
                // bottomRight
                offset: Offset(1.3, -1.3),
                color: HexColor((color == null) ? '#B2BD16' : "$color")),
            Shadow(
                // topRight
                offset: Offset(1.3, 1.3),
                color: HexColor((color == null) ? '#B2BD16' : "$color")),
            Shadow(
                // topLeft
                offset: Offset(-1.3, 1.3),
                color: HexColor((color == null) ? '#B2BD16' : "$color")),
          ],
          decoration:
              (underline == null) ? TextDecoration.none : TextDecoration.underline),
    );
  }
}
