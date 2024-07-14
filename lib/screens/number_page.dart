import 'package:flutter/material.dart';
import 'package:toku_app/components/item_number.dart';
import 'package:toku_app/models/number.dart';

class number_page extends StatelessWidget {
  const number_page({super.key});
  final List<Number> numbers = const [
    Number(image: 'assets/images/numbers/number_one.png', jpName: "ichi", enName: "one" , sound: 'sounds/numbers/number_one_sound.mp3'),
    Number(image: 'assets/images/numbers/number_two.png', jpName: "cvb", enName: "two", sound: 'sounds/numbers/number_two_sound.mp3'),
    Number(image: 'assets/images/numbers/number_three.png', jpName: "nvb", enName: "three", sound: 'sounds/numbers/number_three_sound.mp3'),
    Number(image: 'assets/images/numbers/number_four.png', jpName: "fgh", enName: "four", sound: 'sounds/numbers/number_four_sound.mp3'),
    Number(image: 'assets/images/numbers/number_five.png', jpName: "rtrs", enName: "five", sound: 'sounds/numbers/number_five_sound.mp3'),
    Number(image: 'assets/images/numbers/number_six.png', jpName: "jhj", enName: "six", sound: 'sounds/numbers/number_six_sound.mp3'),
    Number(image: 'assets/images/numbers/number_seven.png', jpName: "sdwe", enName: "seven", sound: 'sounds/numbers/number_seven_sound.mp3'),
    Number(image: 'assets/images/numbers/number_eight.png', jpName: "ngg", enName: "eight", sound: 'sounds/numbers/number_eight_sound.mp3'),
    Number(image: 'assets/images/numbers/number_nine.png', jpName: "fgf", enName: "nine", sound: 'sounds/numbers/number_nine_sound.mp3'),
    Number(image: 'assets/images/numbers/number_ten.png', jpName: "dfdf", enName: "ten", sound: 'sounds/numbers/number_ten_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Numbers",style: TextStyle(color: Colors.white),),
        backgroundColor: Color.fromARGB(255, 66, 88, 107),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context , index){
          return Item(number: numbers[index]);
        },
      ),
    );
  }
  // List<Widget> getList(List<Number> numbers){
  //   List<Widget> itemList = [];
  //   for(int i = 0;i <numbers.length ; i++){
  //     itemList.add(Item(number: numbers[i]));
  //   }
  //   return itemList;
  // }
}
