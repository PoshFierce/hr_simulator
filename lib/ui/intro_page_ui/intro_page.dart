import 'package:flutter/material.dart';
import '../special_entites.dart/constants.dart';
import './intro_page_entites.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: screenPadding1,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: backColor),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 250,
              width: 250,
              child: Image(
                  image: AssetImage('assets/images/logo.png'),
                  fit: BoxFit.fill),
            ),
            const SizedBox(
              height: 60,
            ),
            nextButton,
            const SizedBox(
              height: 60,
            ),
            helpContainer,
          ],
        ),
      ),
    );
  }
}
