import 'package:flutter/material.dart';
class ListView_Seperated extends StatelessWidget {
  const ListView_Seperated({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Separated'),
      ),
      body: ListView.separated(itemBuilder: (context,index){

      }
          separatorBuilder: (context,index)
        if(index %4 == 0){
          return Card(
          color: Colors.red,
          child: Text("advertisement"),
    }else{
    return SizedBox();
        }
    );
    }
    },
          itemCount: itemCount),
    );
  }
}