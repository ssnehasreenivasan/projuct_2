import 'package:flutter/material.dart';
class ListView_Custom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Custom"),
      ),
      body: ListView.custom(childrenDelegate: SliverChildListDelegate(
          List.generate(5, (index) => Text("hello"))
      ),
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(home: ListView_Custom(),));
}