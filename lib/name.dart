import 'package:flutter/material.dart';
import 'package:fudapp/home.dart';

class InName extends StatefulWidget {
  const InName({Key? key}) :super (key: key);

  @override
  State<InName> createState() => _InNameState();
}

class _InNameState extends State<InName> {
//  TextEditingController _name = new TextEditingController();
String _name = '';
  

@override
  Widget build(BuildContext context){

    return Scaffold(
     
       body: SafeArea(
        
      
      child: 
      SingleChildScrollView(

       child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [

        SizedBox(
          height: 270,
        ),
        Center(
          
          child: Text("What is your name?",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),

      SizedBox(
        height: 30,
      ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              
              SizedBox(
            width: 160,
            

            child:  TextField(
              
              decoration: 
            InputDecoration(
              hintText: "Write your name",
              
            ),
            onChanged: (String value){
              setState(() {
                _name = value;
              });
            },
            ),
          ),
          SizedBox(width: 10,),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: Colors.black,
              
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0)),
                  side: BorderSide(color: Colors.orange),
              minimumSize: Size(100, 30), //////// HERE
            ),
            onPressed: () {
              showDialog(context: context, builder: (context){
                return AlertDialog(
                  content: Text("Your name is $_name"),
                );
              });
            },
            child: Text('check'),
          ),

          SizedBox()
            ],
          )
          
          
        ,

      SizedBox(
        height: 30,
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
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen(name: _name)));
            },
            child: Text('Continue'),
          ),
          
          ],
        )
        
       )
        
        

                 
      ]
    )
      )
      
    ),
    );
  }
  
}
