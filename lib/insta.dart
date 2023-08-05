import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
      home: splash()
  ));
}

class splash extends StatelessWidget{

  @override

  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 36, 31, 31),

      body: Center(
        child: Center(

          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/image/insta.png", height: 100,width: 100,),
              Text("Instagram",

              style: TextStyle(

                fontSize: 30,

                 color: Colors.white,

                  fontStyle: FontStyle.italic,

                  fontWeight:FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}