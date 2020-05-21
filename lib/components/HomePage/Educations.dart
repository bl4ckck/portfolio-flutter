import 'package:flutter/material.dart';
import 'package:portfolio/helpers/SizingInformation.dart';
import 'package:portfolio/widgets/Window.dart';

class Educations extends StatelessWidget {
  const Educations({Key key, this.sizingInformation}) : super(key: key);

  final SizingInformation sizingInformation;

  @override
  Widget build(BuildContext context) {
    return Window(
        title: 'educations',
        sizingInformation: sizingInformation,
        widgets: <Widget>[
          Text(
            '- Brawijaya University (2018 - present)',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            '- Vocational High School 1 of Bekasi',
            style: TextStyle(fontSize: 17),
            textAlign: TextAlign.center,
          ),
          Text(
            '- Junior High School 14 of Bekasi',
            style: TextStyle(fontSize: 17),
            textAlign: TextAlign.center,
          ),
          Text(
            '- Primary School 06 of Bintara',
            style: TextStyle(fontSize: 17),
            textAlign: TextAlign.center,
          ),
        ]);
  }
}
