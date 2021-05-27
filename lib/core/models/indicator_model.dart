import 'package:rxdart/rxdart.dart';
import './card_model.dart';

class IndicatorModel {
  final indicatorChannel = BehaviorSubject<int>.seeded(0);
  var indicatorList = [0.5, 0.5, 0.5];

  void changeIndicator(int choice) {
    String opt = cardModel.cardList[cardModel.cardNumber].checkAnswer(choice);
    for (int i = 0; i < 3; i++) {
      if (opt[i] == '0' && indicatorList[i] >= 0.09) {
        indicatorList[i] -= 0.1;
      }

      if (opt[i] == '1' && indicatorList[i] <= 0.9) {
        indicatorList[i] += 0.1;
      }
    }

    indicatorChannel.add(choice);
  }
}

IndicatorModel indicatorModel = IndicatorModel();
