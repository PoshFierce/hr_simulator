import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../special_entites.dart/constants.dart';
import '../../core/models/card_model.dart';
import '../../core/models/indicator_model.dart';
import '../special_entites.dart/nav_service.dart';

ConstrainedBox button1 = ConstrainedBox(
  constraints: BoxConstraints.tightFor(width: 70, height: 70),
  child: FloatingActionButton(
    heroTag: 'btn1',
    backgroundColor: cardColor,
    child: Text(
      '1',
      style: cardStyle,
    ),
    onPressed: () {
      indicatorModel.changeIndicator(1);
      if (cardModel.cardNumber != 7) {
        cardModel.changeCard();
      } else {
        navService.pushNamed(NavConst.resultRoute);
      }
    },
  ),
);

ConstrainedBox button2 = ConstrainedBox(
  constraints: BoxConstraints.tightFor(width: 70, height: 70),
  child: FloatingActionButton(
    heroTag: 'btn2',
    backgroundColor: cardColor,
    child: Text(
      '2',
      style: cardStyle,
    ),
    onPressed: () {
      indicatorModel.changeIndicator(2);
      if (cardModel.cardNumber != 7) {
        cardModel.changeCard();
      } else {
        navService.pushNamed(NavConst.resultRoute);
      }
    },
  ),
);

ConstrainedBox button3 = ConstrainedBox(
  constraints: BoxConstraints.tightFor(width: 70, height: 70),
  child: FloatingActionButton(
    heroTag: 'btn3',
    backgroundColor: cardColor,
    child: Text(
      '3',
      style: cardStyle,
    ),
    onPressed: () {
      indicatorModel.changeIndicator(3);
      if (cardModel.cardNumber != 7) {
        cardModel.changeCard();
      } else {
        navService.pushNamed(NavConst.resultRoute);
      }
    },
  ),
);

Container cardContainer = Container(
  width: 420,
  height: 550,
  child: StreamBuilder<int>(
    stream: cardModel.cardChannel,
    builder: (context, snapshot) {
      return Card(
        color: cardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                cardModel.cardList[snapshot.data].text,
                style: cardStyle,
              ),
            ),
          ],
        ),
      );
    },
  ),
);

Container indicatorContainer1 = Container(
  child: StreamBuilder<int>(
    stream: indicatorModel.indicatorChannel,
    builder: (context, snapshot) {
      return Column(
        children: [
          CircularProgressIndicator(
            backgroundColor: decreaseColor,
            valueColor: AlwaysStoppedAnimation(frontColor),
            strokeWidth: 5,
            value: indicatorModel.indicatorList[0],
          ),
          SizedBox(
            height: 5,
            width: 1,
          ),
          Text(
            'Р',
            style: normalStyle,
          )
        ],
      );
    },
  ),
);

Container indicatorContainer2 = Container(
  child: StreamBuilder<int>(
    stream: indicatorModel.indicatorChannel,
    builder: (context, snapshot) {
      return Column(
        children: [
          CircularProgressIndicator(
            backgroundColor: decreaseColor,
            valueColor: AlwaysStoppedAnimation(frontColor),
            strokeWidth: 5,
            value: indicatorModel.indicatorList[1],
          ),
          SizedBox(
            height: 5,
            width: 1,
          ),
          Text(
            'О',
            style: normalStyle,
          )
        ],
      );
    },
  ),
);

Container indicatorContainer3 = Container(
  child: StreamBuilder<int>(
    stream: indicatorModel.indicatorChannel,
    builder: (context, snapshot) {
      return Column(
        children: [
          CircularProgressIndicator(
            backgroundColor: decreaseColor,
            valueColor: AlwaysStoppedAnimation(frontColor),
            strokeWidth: 5,
            value: indicatorModel.indicatorList[2],
          ),
          SizedBox(
            height: 5,
            width: 1,
          ),
          Text(
            'С',
            style: normalStyle,
          )
        ],
      );
    },
  ),
);
