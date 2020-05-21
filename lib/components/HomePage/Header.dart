import 'package:flutter/material.dart';
import 'package:portfolio/helpers/SizingInformation.dart';
import 'package:portfolio/helpers/WidgetSwitcher.dart';
import 'package:portfolio/widgets/ButtonClassic.dart';
import 'package:portfolio/widgets/TextStroke.dart';
import 'package:portfolio/widgets/Window.dart';

class Header extends StatelessWidget {
  const Header({Key key, this.sizingInformation}) : super(key: key);

  final SizingInformation sizingInformation;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'images/dolphin.jpg',
          width: sizingInformation.localWidgetSize.width / 2 + 300,
        ),
        Container(
          width: sizingInformation.localWidgetSize.width,
          margin: EdgeInsets.all(24),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: TextStroke(
                        'bl4ckck.github.io',
                        underline: true,
                      )),
                  Expanded(
                    flex: 1,
                    child: WidgetSwitcher(
                      sizingInformation: sizingInformation,
                      children: <Widget>[
                        ButtonClassic(
                          title: 'LinkedIn',
                          url: 'https://www.linkedin.com/in/alvin747/',
                        ),
                        ButtonClassic(
                          title: 'Github',
                          url: 'https://github.com/bl4ckck',
                        ),
                        ButtonClassic(
                          title: 'Youtube',
                          url: 'https://www.youtube.com/channel/UCGThJSh-fjXcwLUWRZbYPbQ',
                        ),
                        ButtonClassic(
                          title: 'Instagram',
                          url: 'https://www.instagram.com/alvinnaufal/',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Window(
                  title: 'profile',
                  sizingInformation: sizingInformation,
                  widgets: <Widget>[
                    SizedBox(height: 15),
                    Image.asset(
                      'images/profile.png',
                      height: 130,
                    ),
                    TextStroke(
                      'Alvin Naufal',
                      textCenter: true,
                      color: '#B2BD16',
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Student at\nBrawijaya University',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Email info alvin.naufal3@gmail.com',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold, height: 3),
                    ),
                  ]),
            ],
          ),
        ),
      ],
    );
  }
}
