import '../data/texts.dart';
import 'package:rxdart/rxdart.dart';

class MyCard {
  int id;
  String text;

  MyCard(id, text) {
    this.id = id;
    this.text = text;
  }

  String checkAnswer(int answerId) {
    if (this.id == 1) {
      if (answerId == 1) {
        return '101';
      }
      if (answerId == 2) {
        return '000';
      }
      if (answerId == 3) {
        return '010';
      }
    }

    if (this.id == 2) {
      if (answerId == 1) {
        return '112';
      }
      if (answerId == 2) {
        return '200';
      }
      if (answerId == 3) {
        return '002';
      }
    }

    if (this.id == 3) {
      if (answerId == 1) {
        return '102';
      }
      if (answerId == 2) {
        return '112';
      }
      if (answerId == 3) {
        return '000';
      }
    }

    if (this.id == 4) {
      if (answerId == 1) {
        return '100';
      }
      if (answerId == 2) {
        return '011';
      }
      if (answerId == 3) {
        return '110';
      }
    }

    if (this.id == 5) {
      if (answerId == 1) {
        return '000';
      }
      if (answerId == 2) {
        return '111';
      }
      if (answerId == 3) {
        return '200';
      }
    }

    if (this.id == 6) {
      if (answerId == 1) {
        return '111';
      }
      if (answerId == 2) {
        return '000';
      }
      if (answerId == 3) {
        return '200';
      }
    }

    if (this.id == 7) {
      if (answerId == 1) {
        return '001';
      }
      if (answerId == 2) {
        return '110';
      }
      if (answerId == 3) {
        return '000';
      }
    }

    if (this.id == 8) {
      if (answerId == 1) {
        return '001';
      }
      if (answerId == 2) {
        return '110';
      }
      if (answerId == 3) {
        return '000';
      }
    }

    return '3';
  }
}

class CardModel {
  int cardNumber = 0;
  final cardChannel = BehaviorSubject<int>.seeded(0);
  var cardList = [
    MyCard(1, textCard1),
    MyCard(2, textCard2),
    MyCard(3, textCard3),
    MyCard(4, textCard4),
    MyCard(5, textCard5),
    MyCard(6, textCard6),
    MyCard(7, textCard7),
    MyCard(8, textCard8)
  ];

  void changeCard() {
    cardNumber += 1;
    cardChannel.add(cardNumber);
  }
}

CardModel cardModel = CardModel();
