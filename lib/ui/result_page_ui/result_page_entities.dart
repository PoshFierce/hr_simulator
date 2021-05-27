import 'package:flutter/material.dart';
import '../special_entites.dart/constants.dart';
import '../../core/models/indicator_model.dart';
import '../../core/models/result_model.dart';

Text resultTitle = Text(
  'Ваш результат',
  style: titleStyle,
);

Container resultContainer1 = Container(
  child: Row(
    children: [
      CircularProgressIndicator(
        backgroundColor: decreaseColor,
        valueColor: AlwaysStoppedAnimation(frontColor),
        strokeWidth: 5,
        value: indicatorModel.indicatorList[0],
      ),
      SizedBox(
        height: 1,
        width: 10,
      ),
      Text(
        'Коэффициент\nРепутации = ' +
            indicatorModel.indicatorList[0].toStringAsFixed(1),
        style: normalStyle,
      )
    ],
  ),
);

Container resultContainer2 = Container(
  child: Row(
    children: [
      CircularProgressIndicator(
        backgroundColor: decreaseColor,
        valueColor: AlwaysStoppedAnimation(frontColor),
        strokeWidth: 5,
        value: indicatorModel.indicatorList[1],
      ),
      SizedBox(
        height: 1,
        width: 10,
      ),
      Text(
        'Коэффициент\nОтветственности = ' +
            indicatorModel.indicatorList[1].toStringAsFixed(1),
        style: normalStyle,
      )
    ],
  ),
);

Container resultContainer3 = Container(
  child: Row(
    children: [
      CircularProgressIndicator(
        backgroundColor: decreaseColor,
        valueColor: AlwaysStoppedAnimation(frontColor),
        strokeWidth: 5,
        value: indicatorModel.indicatorList[2],
      ),
      SizedBox(
        height: 1,
        width: 10,
      ),
      Text(
        'Коэффициент\nСтрессоустойчивости = ' +
            indicatorModel.indicatorList[2].toStringAsFixed(1),
        style: normalStyle,
      )
    ],
  ),
);

Container resultCard = Container(
  width: 420,
  height: 530,
  child: Card(
    color: cardColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Container(
      margin: EdgeInsets.all(10),
      child: Text(
        resultModel.getResult(),
        style: normalStyle,
      ),
    ),
  ),
);
