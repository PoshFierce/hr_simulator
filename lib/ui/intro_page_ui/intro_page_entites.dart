import 'package:flutter/material.dart';
import '../special_entites.dart/nav_service.dart';
import '../special_entites.dart/constants.dart';
//import '../../core/domain/models/intro_page/text_field_model.dart';

OutlineButton nextButton = OutlineButton(
  highlightColor: backColor,
  borderSide: BorderSide.none,
  color: backColor,
  onPressed: () {
    navService.pushNamed(NavConst.mainRoute);
  },
  child: Container(
    width: 200,
    height: 50,
    decoration: outlineButtonBoxDecoration,
    alignment: Alignment.center,
    child: Text(
      'Старт',
      style: normalStyle,
    ),
  ),
);

Container helpContainer = Container(
  alignment: Alignment.center,
  child: Text(
    'HR Simulator - Проверка ваших навыков и компетенций\nкак HR-Менеджера с помощью кейсов.\n\n'
    '*Р - Репутация\n*О - Ответственность\n*С - Стрессоустойчивость\n\n'
    'В зависимости от ваших решений индикаторы РОС будут либо возрастать, либо убывать. '
    'В конце вы увидите результат ваших рещений - Ваши навыки и компетенции',
    style: helpStyle,
  ),
);
