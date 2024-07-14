import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/number.dart';
class Item extends StatelessWidget {
  const Item({super.key ,required this.number});
  final Number number;
  @override
  Widget build(BuildContext context) {
    return Container(
            height: 80,
            color: Color.fromARGB(255, 91, 102, 111),
            child: Row(
              children: [
                Container(
                  color: const Color.fromARGB(255, 179, 179, 179),
                  child: Image.asset(number.image)),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(number.jpName,style: TextStyle(color: Colors.white,fontSize: 20)),
                      Text(number.enName,style: TextStyle(color: Colors.white,fontSize: 20)),
                    ],
                  ),
                ),
                Spacer(flex: 1,),
                IconButton(onPressed: () {
                  
                  try{
                    final player = AudioPlayer();
                    player.play(AssetSource(number.sound));
                  }catch(ex){
                    print("asdasd");
                  }
                  
                }, 
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 30,
                  )
                ),
              ],
            ),
          );

  }
}
// AudioCache player = AudioCache(prefix: 'assets/sounds/numbers/');
                  // player.load('number_one_sound.mp3');
                  // final player = AudioCache();
                  // player.play(UrlSource('assets/sounds/numbers/number_one_sound.mp3'));
                  // If file located in assets folder like assets/sounds/note01.wave"
                  // player.play(UrlSource('note1.wave'));