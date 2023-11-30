import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';

class HomeScreemState with ChangeNotifier{


  var currentWord= WordPair.random();

  void nextWord(){

      currentWord = WordPair.random();
      notifyListeners();
  }



}