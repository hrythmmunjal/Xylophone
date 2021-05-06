import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int num){
    final player = AudioCache();
    player.play('note$num.wav');
  }
  Expanded buildkey({Color color , int num}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(num);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color : Colors.red,num: 1),
              buildkey(color : Colors.orange,num: 2),
              buildkey(color : Colors.yellow,num: 3),
              buildkey(color : Colors.green,num: 4),
              buildkey(color : Colors.teal,num: 5),
              buildkey(color : Colors.blue,num: 6),
              buildkey(color : Colors.purple,num: 7),
            ],
          ),
          )
        ),
    );
  }
}
