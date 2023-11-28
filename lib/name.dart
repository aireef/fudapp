import 'package:flutter/material.dart';
import 'package:fudapp/home.dart';

class InName extends StatefulWidget {
  const InName({Key? key}) :super (key: key);

  @override
  State<InName> createState() => _InNameState();
}

class _InNameState extends State<InName> {
 TextEditingController _name = new TextEditingController();
  

@override
  Widget build(BuildContext context){

    return Scaffold(
     
       body: SafeArea(
      
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [


        Center(
          
          child: Text("What is your name?",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),

      SizedBox(
        height: 10,
      ),

        Center(
          child:  
          SizedBox(
            width: 240,
            

            child:  TextField(
              controller: _name,
              decoration: 
            InputDecoration(
              hintText: "Write your name",
              
            ),
            ),
          )
          
        ),

      SizedBox(
        height: 10,
      ),
       
       Container(
        
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [

             ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: Colors.black,
              
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0)),
                  side: BorderSide(color: Colors.orange),
              minimumSize: Size(120, 30), //////// HERE
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Back'),
          ),

          SizedBox(
            width: 10,
          ),
           ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.orange,
              onPrimary: Colors.black,
              
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0)),
                  side: BorderSide(color: Colors.orange),
              minimumSize: Size(120, 30), //////// HERE
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen(name: _name.text)));
            },
            child: Text('Continue'),
          ),
          
          ],
        )
        
       )
        
        

                 
      ]
    )
    ),
    );
  }
  
}