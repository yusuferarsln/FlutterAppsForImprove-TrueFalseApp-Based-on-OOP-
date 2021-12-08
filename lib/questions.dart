import 'package:test_app/test.dart';

class TestData{

  int _kacinciSoru = 0;
  List<Test> _testBank = [
    Test(
        soruMetni: 'Titanic gelmiş geçmiş en büyük gemidir', soruYaniti: false),
    Test(
        soruMetni: 'Dünyadaki tavuk sayısı insan sayısından fazladır',
        soruYaniti: true),
    Test(soruMetni: 'Kelebeklerin ömrü bir gündür', soruYaniti: false),
    Test(soruMetni: 'Dünya düzdür', soruYaniti: false),
    Test(
        soruMetni: 'Kaju fıstığı aslında bir meyvenin sapıdır',
        soruYaniti: true),
    Test(
        soruMetni: 'Fatih Sultan Mehmet hiç patates yememiştir',
        soruYaniti: true),
    Test(
        soruMetni: 'Bla bla bla bla mıdır ?',
        soruYaniti: true)
  ];

  String? getSoruMetni(){
    return _testBank[_kacinciSoru].soruMetni;
  }
  bool? getSoruYaniti(){
    return _testBank[_kacinciSoru].soruYaniti;
  }

  void nextQuestion(){
    if(_kacinciSoru+1<_testBank.length){
    _kacinciSoru++;
    }
  }
  bool? isTestOver(){
    if(_kacinciSoru+1>=_testBank.length){
      return true;
    }
    else
      {
        return false;
      }
  }
  void endTest(){
    _kacinciSoru=0;
  }
}