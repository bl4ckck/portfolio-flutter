import 'package:flutter/material.dart';
import 'package:portfolio/helpers/HexColor.dart';
import 'package:portfolio/helpers/SizingInformation.dart';
import 'package:portfolio/widgets/TextStroke.dart';

class Window extends StatelessWidget {
  const Window(
      {Key key,
      @required this.title,
      @required this.sizingInformation,
      @required this.widgets,
      this.marginTop,
      this.width,
      this.image})
      : super(key: key);

  final SizingInformation sizingInformation;
  final List<Widget> widgets;
  final String title;
  final double marginTop;
  final double width;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: (marginTop == null) ? 100 : marginTop),
      width: (width == null)
          ? sizingInformation.localWidgetSize.width / 2 + 100
          : width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.zero,
          border: Border.all(color: HexColor('#2307D6'), width: 2),
          color: HexColor('#E9E8E9'),
          image: (image == null)
              ? null
              : DecorationImage(image: AssetImage("$image"), fit: BoxFit.cover),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 2), blurRadius: 5, color: Colors.black26)
          ]),
      child: Column(
        children: <Widget>[
          Container(
            width: sizingInformation.localWidgetSize.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.zero,
                color: HexColor('#2200FF'),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 3),
                      blurRadius: 5,
                      color: Colors.black26)
                ]),
            child: TextStroke(
              ' $title',
              color: '#181818',
              fontSize: 20,
            ),
          ),
          ...widgets
        ],
      ),
    );
  }
}
