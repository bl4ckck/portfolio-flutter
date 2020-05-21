import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/helpers/SizingInformation.dart';
import 'package:portfolio/widgets/TextStroke.dart';
import 'package:portfolio/widgets/Window.dart';

class Portfolios extends StatefulWidget {
  Portfolios({Key key, @required this.sizingInformation}) : super(key: key);

  final SizingInformation sizingInformation;

  @override
  _PortfoliosState createState() => _PortfoliosState();
}

class _PortfoliosState extends State<Portfolios> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> titleList = [
      'LPSE kemenkeu Mobile',
      'TBClear',
      'Popular Movies',
      'Awe Bot',
      'GoGo Travel'
    ];
    final List<String> imgList = [
      'https://i.ibb.co/VMz6Q2y/1.jpg',
      'https://i.ibb.co/3c3WNsN/2.jpg',
      'https://i.ibb.co/gwHtzvf/3.jpg',
      'https://i.ibb.co/T8vC1TG/4.jpg',
      'https://i.ibb.co/5LZgPXb/5.jpg'
    ];

    return Window(
        title: 'portfolios',
        width: widget.sizingInformation.localWidgetSize.width / 2 + 300,
        sizingInformation: widget.sizingInformation,
        widgets: <Widget>[
          SizedBox(
            height: 15,
          ),
          CarouselSlider(
            options: CarouselOptions(
                height: 400.0,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    current = index;
                  });
                }),
            items: imgList.map((i) {
              int index = imgList.indexOf(i);
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: widget.sizingInformation.localWidgetSize.width,
                    margin: EdgeInsets.symmetric(horizontal: 1.0),
                    decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage("$i"))),
                    child: TextStroke(
                      (current == index)
                            ? titleList[current]
                            : titleList[
                                (current + 1 == 5) ? current : current + 1],
                      color: '#E707EF',
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ]);
  }
}
