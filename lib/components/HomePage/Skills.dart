import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:portfolio/helpers/HexColor.dart';
import 'package:portfolio/helpers/SizingInformation.dart';
import 'package:portfolio/helpers/WidgetSwitcher.dart';
import 'package:portfolio/widgets/TextStroke.dart';
import 'package:portfolio/widgets/Window.dart';

class Skills extends StatelessWidget {
  const Skills({Key key, @required this.sizingInformation}) : super(key: key);

  final SizingInformation sizingInformation;

  @override
  Widget build(BuildContext context) {
    return Window(
        title: 'skills',
        width: sizingInformation.localWidgetSize.width / 2 + 300,
        marginTop: 0,
        image: 'https://i.ibb.co/wwc96yH/vp3.jpg',
        sizingInformation: sizingInformation,
        widgets: <Widget>[
          SizedBox(
            height: 15,
          ),
          WidgetSwitcher(
            sizingInformation: sizingInformation,
            children: <Widget>[
              new CircularPercentIndicator(
                radius: 100.0,
                lineWidth: 10.0,
                percent: 0.6,
                header: new TextStroke('flutter'),
                center: Image.network(
                  'https://cdn.worldvectorlogo.com/logos/flutter-logo.svg',
                  width: 50,
                ),
                backgroundColor: Colors.grey,
                progressColor: HexColor('#91F0FF'),
              ),
              new CircularPercentIndicator(
                radius: 100.0,
                lineWidth: 10.0,
                percent: 0.7,
                header: new TextStroke('javascript'),
                center: Image.network(
                  'https://cdn.pixabay.com/photo/2015/04/23/17/41/javascript-736400_960_720.png',
                  width: 50,
                ),
                backgroundColor: Colors.grey,
                progressColor: HexColor('#91F0FF'),
              ),
              new CircularPercentIndicator(
                radius: 100.0,
                lineWidth: 10.0,
                percent: 0.5,
                header: new TextStroke('react native'),
                center: Image.network(
                  'https://www.kindpng.com/picc/m/400-4004389_react-storybook-react-native-logo-hd-png-download.png',
                  width: 50,
                ),
                backgroundColor: Colors.grey,
                progressColor: HexColor('#91F0FF'),
              ),
              new CircularPercentIndicator(
                radius: 100.0,
                lineWidth: 10.0,
                percent: 0.45,
                header: new TextStroke('go'),
                center: Image.network(
                  'https://seeklogo.com/images/G/go-logo-046185B647-seeklogo.com.png',
                  width: 50,
                ),
                backgroundColor: Colors.grey,
                progressColor: HexColor('#91F0FF'),
              ),
              new CircularPercentIndicator(
                radius: 100.0,
                lineWidth: 10.0,
                percent: 0.8,
                header: new TextStroke('php'),
                center: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/2/27/PHP-logo.svg',
                  width: 50,
                ),
                backgroundColor: Colors.grey,
                progressColor: HexColor('#91F0FF'),
              ),
            ],
          ),
        ]);
  }
}
