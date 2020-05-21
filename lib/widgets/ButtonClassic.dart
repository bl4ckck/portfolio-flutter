import 'package:flutter/material.dart';
import 'package:portfolio/helpers/HexColor.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonClassic extends StatelessWidget {
  const ButtonClassic({Key key, @required this.title, @required this.url}) : super(key: key);

  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => launch(url),
      color: HexColor('#E9E8E9'),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: BorderSide(width: 2, color: HexColor('#C6C3C6'))),
      textColor: HexColor('#4D4D4D'),
      child: Text("$title"),
    );
  }
}
