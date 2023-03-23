import 'package:flutter/material.dart';
import'package:mobx/mobx.dart';
import'GameViewModel.dart';
part 'GameModel.g.dart';

class GameModel = _gameModelBase with _$GameModel;

abstract class _gameModelBase with Store{


ObservableList<String>gameItems= ObservableList();
bool iscrossAssigned=false;

@observable
String result="";
@action
void setWinner({required String result}){
  this.result=result;
  print(result);
}
bool check=false;
}



