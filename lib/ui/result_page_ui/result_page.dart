import 'package:flutter/material.dart';
import '../special_entites.dart/constants.dart';
import './result_page_entities.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: screenPadding3,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: backColor),
        child: Column(
          children: <Widget>[
            resultTitle,
            SizedBox(
              height: 20,
              width: 1,
            ),
            resultContainer1,
            SizedBox(
              height: 25,
              width: 1,
            ),
            resultContainer2,
            SizedBox(
              height: 25,
              width: 1,
            ),
            resultContainer3,
            SizedBox(
              height: 15,
              width: 1,
            ),
            resultCard,
          ],
        ),
      ),
    );
  }
}
