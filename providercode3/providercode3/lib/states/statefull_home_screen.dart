import 'package:flutter/material.dart';

class Stf_HomeScreen extends StatefulWidget {
  const Stf_HomeScreen({super.key});

  @override
  State<Stf_HomeScreen> createState() => _Stf_HomeScreenState();
}


class _Stf_HomeScreenState extends State<Stf_HomeScreen> {

    int x = 0;
  @override
  Widget build(BuildContext context) {

    print("Build");
    return Scaffold(
 
             appBar: AppBar(
              title: Text("Subscribe"), // for example we no need to re build these type of ststic text right. thats why we have to use the state management like provider bloc or getx. if rebuild happens the satic text or something static our app perpermancwe will decresssed right.
             ),
             body : Column(

              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [


              Container(
                child: Center(child: Text(x.toString(), style: TextStyle(fontSize: 50),),),
              )
              ],
             ),

             floatingActionButton:  FloatingActionButton(
              
              onPressed: (){

                  // x++;

                  // print(x++);
                  
                
             x++;
                  print(x++);

                  // setState(() {
                  //     x++;
                    
                  // });

                  setState(() {
                    
                    
                  });

                  //remember in statefull widget full view get refreshed(full view re-builded.if we use satefull widget). or i mean all widgets  
              },
             
               child: Icon(Icons.add),),
    );
  }
}