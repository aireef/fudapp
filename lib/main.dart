import 'package:flutter/material.dart';

import 'package:fudapp/name.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:  ThemeData(scaffoldBackgroundColor:  Colors.white),
      home: intro(
        
       
      ),
    );
  }
}

class intro extends StatelessWidget{
  const intro({Key? key}) :super(key: key);

@override
Widget build(BuildContext context){

  return Scaffold(
    
    body: SafeArea(
      
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        Center(
          
          child: Text("Welcome to food app",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),

      SizedBox(
        height: 10,
      ),
       
         ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.orange,
              onPrimary: Colors.black,
              
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0)),
              minimumSize: Size(155, 45), //////// HERE
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return InName();
              }));
            },
            child: Text('Continue'),
          ),
        

                 
      ]
    )
    ),
  );
}  
  
}

