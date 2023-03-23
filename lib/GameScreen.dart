import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'GameViewModel.dart';
class GameScreen extends StatelessWidget
{
  GameScreen({super.key});
  GameViewModel _gameVM = GameViewModel();
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title:Text("TIC TAC TOE"),
        backgroundColor: Colors.indigoAccent,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Container(
              height:400,
              width:350,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 3,
                  mainAxisSpacing: 3,
                  childAspectRatio: 1),
                  itemCount: _gameVM.gameItems.length,
                   itemBuilder:(BuildContext context, index) {
                     return Observer(
                       builder: (context) {
                         return MaterialButton(onPressed:(){
                            _gameVM.tappedItems(index);
                           },
                           child: 
                           _gameVM.gameItems[index]==""?Icon(Icons.edit):_gameVM.gameItems[index]=="close"?Icon(Icons.close,color:Colors.red):Icon(Icons.circle,color:Colors.green),
                           color: Colors.grey,
                           
                           );
                       }
                     );
                   }
              ),
            ),
          ),
          Observer(
                    builder: (context) {
                      return Text(_gameVM.result,style:TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color:Colors.white));
                    }
                  ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(onPressed: (){
              _gameVM.resetButton();
          }, child: Padding(
            padding: const EdgeInsets.all(15),
            child: Text("Reset"),
          ),style:ButtonStyle(elevation: MaterialStatePropertyAll(15),shape:MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))),
          ),
          SizedBox(
            height:15
          ),
          Text("Try your Luck",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),),
           
        ],
      )
      
    );

  }
}