import'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main()=>runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void tune(int playsound){
    final player = AudioCache();
            player.play("note$playsound.wav");
            print("note$playsound.wav");
  }
  @override
  Expanded build_colors({Color color,int sound_}){
    return Expanded(
      child: GestureDetector(
        onTap: (){
          setState(() {
            tune(sound_);
          });

        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 160,
              width: 390,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(10)

                    ,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );

  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              build_colors(color:Colors.blue,sound_:1),
              build_colors(color:Colors.green,sound_:2),
              build_colors(color:Colors.orange,sound_:3),
              build_colors(color:Colors.yellow,sound_:4),
              build_colors(color:Colors.purple,sound_:5),
              build_colors(color:Colors.pink,sound_:6),
              build_colors(color:Colors.brown,sound_:7),

            ],
          ),
        ),
    );
  }
}
