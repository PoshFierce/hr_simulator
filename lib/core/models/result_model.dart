import '../data/texts.dart';
import '../models/indicator_model.dart';

class ResultModel {
  var resultTextList = [
    resultText1, //0
    resultText2, //1
    resultText3, //2
    resultText4, //3
    resultText5, //4
    resultText6, //5
    resultText7, //6
    resultText8, //7
    resultText9, //8
    resultText10, //9
    resultText11, //10
    resultText12, //11
    resultText13 //12
  ];

  var globalResultTextList = [
    globalResultText1,
    globalResultText2,
    globalResultText3
  ];

  String getResult() {
    String result = '';
    if (indicatorModel.indicatorList[0] >= 0.3) {
      result += resultTextList[2] + resultTextList[3] + resultTextList[4];
    }
    if (indicatorModel.indicatorList[0] >= 0.5) {
      result += resultTextList[6] + resultTextList[8];
    }
    if (indicatorModel.indicatorList[0] >= 0.7) {
      result += resultTextList[12];
    }

    if (indicatorModel.indicatorList[1] >= 0.3) {
      result += resultTextList[0];
    }
    if (indicatorModel.indicatorList[1] >= 0.5) {
      result += resultTextList[1];
    }
    if (indicatorModel.indicatorList[1] >= 0.7) {
      result += resultTextList[9] + resultTextList[11];
    }

    if (indicatorModel.indicatorList[2] >= 0.3) {
      result += resultTextList[5];
    }
    if (indicatorModel.indicatorList[2] >= 0.5) {
      result += resultTextList[7];
    }
    if (indicatorModel.indicatorList[2] >= 0.7) {
      result += resultTextList[10];
    }

    var indicatorSum = indicatorModel.indicatorList[0] +
        indicatorModel.indicatorList[1] +
        indicatorModel.indicatorList[2];

    if (indicatorSum <= 1.1) {
      result += globalResultTextList[0];
    }
    if (indicatorSum <= 2.1 && indicatorSum > 1.1) {
      result += globalResultTextList[1];
    }
    if (indicatorSum <= 3.1 && indicatorSum > 2.1) {
      result += globalResultTextList[2];
    }

    return result;
  }
}

ResultModel resultModel = ResultModel();
