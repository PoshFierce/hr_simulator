import 'package:flutter/material.dart';
import '../special_entites.dart/constants.dart';
import './main_page_entities.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: screenPadding2,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: backColor),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                indicatorContainer1,
                indicatorContainer2,
                indicatorContainer3,
              ],
            ),
            SizedBox(
              width: 1,
              height: 10,
            ),
            cardContainer,
            SizedBox(
              width: 1,
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                button1,
                button2,
                button3,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
