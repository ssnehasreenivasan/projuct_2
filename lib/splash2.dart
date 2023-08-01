
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp( home : Splash2()));
}
class Splash2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
        // gradition: LinearGradient(
        //   beging: Alignment.bottomLeft,end:Alignment.topRight,
        //   colors: [
        //     Colors.green,
        //     Colors.white,
        //     Colors.green,
        //   ])
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/image/greennnn.jpg")
        ),
        ),

          child: Center(
        child: Column(
          children: [
         // Icon( Icons.cake,size: 80,color: Colors.green,),
         Image.asset("assets/icons/abc2.png"),
          Text("My Application",style:  TextStyle(
            fontSize: 30,
              color: Colors.green,
             fontWeight: FontWeight.bold,
             fontStyle: FontStyle.italic

            )),
           ],
         ),

    ),
      )
    );
  }
}