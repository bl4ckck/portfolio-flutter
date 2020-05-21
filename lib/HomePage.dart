import 'package:flutter/material.dart';
import 'package:portfolio/components/HomePage/Educations.dart';
import 'package:portfolio/components/HomePage/Header.dart';
import 'package:portfolio/components/HomePage/Portfolios.dart';
import 'package:portfolio/components/HomePage/Skills.dart';
import 'package:portfolio/helpers/HexColor.dart';
import 'package:portfolio/helpers/BaseWidget.dart';
import 'package:portfolio/widgets/ButtonClassic.dart';
import 'package:portfolio/widgets/TextStroke.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, sizingInformation) {
      return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              HexColor('#c8efff'),
              HexColor('#adc3ff'),
              HexColor('#8582f7'),
              HexColor('#684df2'),
              HexColor('#4917f2'),
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Header(
                  sizingInformation: sizingInformation,
                ),
                SizedBox(
                  height: 15,
                ),
                Skills(
                  sizingInformation: sizingInformation,
                ),
                Portfolios(sizingInformation: sizingInformation),
                Educations(
                  sizingInformation: sizingInformation,
                ),
                Container(
                  margin: EdgeInsets.only(top: 100),
                  width: sizingInformation.localWidgetSize.width / 2 + 100,
                  child: Column(
                    children: <Widget>[
                      TextStroke(
                        'this is my hobby :)',
                        fontSize: 26,
                        color: '#E707EF',
                        textCenter: true,
                      ),
                      Image.asset('images/guitar.gif'),
                      ButtonClassic(
                          title: 'Watch on Youtube',
                          url: 'https://www.youtube.com/watch?v=WhH-Nkoe5qY'),
                      SizedBox(height: 55),
                      TextStroke('© 2020 Alvin Naufal.', fontSize: 17, color: '#000000',),
                    ],
                  ),
                ),
                SizedBox(height: 15)
              ],
            ),
          ),
        ),
      );
    });
  }
}
