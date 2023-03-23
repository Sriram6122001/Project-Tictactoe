import 'package:flutter/material.dart';
import 'gameScreen.dart';
class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //useMaterial3: true
      ),
      darkTheme:ThemeData.dark(),
      home:GameScreen()
    );
  } 
}

