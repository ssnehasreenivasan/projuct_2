import 'package:flutter/material.dart';
 class Listview_with_builder extends StatelessWidget {
   @override
   Widget build(BuildContext context){
     return Scaffold(
       appBar: AppBar(title: Text("ListViwe Builder"),),
       body: ListView.builder(itemBuilder: (context, index)
     {
       return Card(
         child: Center(
           child: Image.asset("assets/image/insta.png"),
         ),
       );
     })
     );
   }
 }
void main(){
   runApp(MaterialApp(home: Listview_with_builder(),));
}