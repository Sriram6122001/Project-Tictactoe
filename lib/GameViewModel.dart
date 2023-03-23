import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'GameModel.dart';
import 'GameScreen.dart';
//create a class with a name GameViewModel which inherits the class GameModel
class GameViewModel extends GameModel
{
  //Declare a constructor for the class GameViewModel
  GameViewModel()
  {
    gameItems=ObservableList.of([
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      ""
    ]);
  }

  tappedItems(int index)
  {
    if(gameItems[index]==""&& result=="")
    {
      if(iscrossAssigned)
      {
        gameItems[index]="circle";
        iscrossAssigned=false;
      }
      else{
        gameItems[index]="close";
        iscrossAssigned=true;
      }
      winning();
    }
  }


 resetButton()
 {
  for(int i=0;i<gameItems.length;i++)
  {
    gameItems[i]="";
  }
  iscrossAssigned=false;
  counter=0;
  result="";
  check=false;
 }

int counter=0;
void winning()
{
if(gameItems[0]==gameItems[1]&&gameItems[0]==gameItems[2]&&gameItems[0]!="")
{
  setWinner(result:"${gameItems[0]} is the winner");
  counter++;
}
else if(gameItems[3]==gameItems[4]&&gameItems[3]==gameItems[5]&&gameItems[3]!="")
{
  setWinner(result:"${gameItems[3]} is the winner");
  counter++;
}
else if(gameItems[6]==gameItems[7]&&gameItems[6]==gameItems[8]&&gameItems[6]!="")
{
  setWinner(result:"${gameItems[6]} is the winner");
  counter++;
}
else if(gameItems[0]==gameItems[3]&&gameItems[0]==gameItems[6]&&gameItems[0]!="")
{
 setWinner(result:"${gameItems[0]} is the winner");
  counter++;
}
else if(gameItems[1]==gameItems[4]&&gameItems[1]==gameItems[7]&&gameItems[1]!="")
{
  setWinner(result:"${gameItems[1]} is the winner");
  counter++;
}
else if(gameItems[2]==gameItems[5]&&gameItems[2]==gameItems[8]&&gameItems[2]!="")
{
 setWinner(result:"${gameItems[2]} is the winner");
  counter++;
}
else if(gameItems[0]==gameItems[4]&&gameItems[0]==gameItems[8]&&gameItems[0]!="")
{
  setWinner(result:"${gameItems[0]} is the winner");
  counter++;
}
else if(gameItems[2]==gameItems[4]&&gameItems[2]==gameItems[6]&&gameItems[2]!="")
{
  setWinner(result:"${gameItems[2]} is the winner");
  //result=("${gameItems[2]} is the winner");
  counter++;
}
else{

  counter++;
  if(counter>8 &&result=="")
  {
    setWinner(result:"Draw");
    check=true;
    Future.delayed(Duration(seconds: 3),()
    {
      if(check=true)
      {
        resetButton();
      }
    }
    );
  }
}
  if(result!=""){
    check=true;
      Future.delayed(Duration(seconds: 3),()
  {
    if(check==true){
       resetButton();
    }
   
  });
  }
 
  
}
}





















