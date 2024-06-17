
import 'package:flutter/material.dart';

class Stl_HomeScreen extends StatelessWidget {
  // const Stl_HomeScreen({super.key});
   Stl_HomeScreen({super.key});

//  final int x =0;

  int x =0;


  //stateless widget example is this.

  @override
  Widget build(BuildContext context) {

    print("build");

    return Scaffold(

       appBar: AppBar(
          title: Text('Provider Tutorials'),
       ),
       body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            


            Container(
              child: Center(child: Text(x.toString(),style: TextStyle(fontSize: 50),)),
            ) 

        ],
       ),

       floatingActionButton: FloatingActionButton(onPressed: (){

          // x++;

          print(x++);
       },
       
       child: Icon(Icons.add),
       ),

    );

  }
}