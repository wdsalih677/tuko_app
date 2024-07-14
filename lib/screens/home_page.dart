import 'package:flutter/material.dart';
import 'package:toku_app/components/category_item.dart';
import 'package:toku_app/screens/number_page.dart';
class HomePAge extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Toku" , style: TextStyle(color: Colors.white),),
          backgroundColor: Color.fromARGB(255, 48, 158, 255),
        ),
        body: Column(
          children: [
            category("Number" , Color.fromARGB(255, 66, 88, 107) ,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return number_page();
                }));
              },
            ),
            category("Family Members" , Color.fromARGB(255, 66, 107, 79)),
            category("Colors" , Color.fromARGB(255, 104, 107, 66)),
            category("Phrases" ,Color.fromARGB(255, 107, 86, 66)),
          ],
        ),
    ); 
  }
}
