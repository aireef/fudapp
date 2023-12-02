import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  String name;

  HomeScreen({required this.name});


 

  @override
  Widget build(BuildContext context){

    return Scaffold(
     appBar: AppBar(
      actions: [
        IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,
        color: Colors.black,))
      ],
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      toolbarHeight: 40,
      automaticallyImplyLeading: false,
      title: Text("FoodApp",
      style: TextStyle(
        color: Colors.black
      ),),
     ),
    
    body:
    SafeArea(child: SingleChildScrollView(
      child: 

//all column      
      Column(
      children: <Widget> [
        
        Container(

          padding: EdgeInsets.all(8),
          child: Card(
            

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            
            color: Colors.orangeAccent,
            child: SizedBox(
              height: 100,
              width: 800,
              child: Container(
               
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(5),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: <Widget> [
                  Container(
                    
                    
                    child: 

                    Row(
                      children: <Widget> [

                        Text("Hello ",
                        style: TextStyle(
                          fontSize: 25
                        ),),
                        Expanded(child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Text("$name", 
                    style: TextStyle(fontSize: 25),
                    maxLines: 1,),

                    )
,
                    )


                      ],
                    )

                    
                    
                   
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: 
                       Text("Your Balance is 20",
                      style: TextStyle(fontSize: 20),)
                      )
                     ,
                     

                      Expanded(child: 
                      SizedBox(
                        width: 100,
                        height: 20,
                        
                        child: ElevatedButton(onPressed: (){}, 
                        child: 
                        
                       
                        Text("Top Up",
                        style: TextStyle(
                          color: Colors.black
                        ))
                        
                        
                        ,
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                   ),
                          ),
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          shadowColor: MaterialStateProperty.all(Colors.transparent)
                        ),),
                      )
                      
                      )
                      
                    ],
                  )
                ],
              ),
              )
              
            ),
              ),
        ),

        SizedBox(
          height: 10,
        ),


        Center(
          child: Text("--- Our Newest Menu ---",
          style: TextStyle(
            fontSize: 20
          ),
          ),
        ),
        SizedBox(
          height: 10,
        ),



        Container(

          padding: EdgeInsets.all(8),
         child: Card(
          color: Colors.orangeAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: 
          SizedBox(
            width: 800,
            height: 250,

            child:Column(
                children: <Widget> [
                  
                  Expanded(
                    flex: 2,
                    child: 
                  Text("Burger",
                  style: 
                  TextStyle(
                    fontSize: 25
                  ),)
                  )
                  ,

                 

                  Expanded(
                    flex: 11,
                    child: 
                  Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: 
                    SizedBox(
                      width: 800,
                      height: 150,
                      child: 
                      Image.asset('images/burger.png'),
                    ),
                  ),
                  ),
                  

                 

                
                      Container(
                        margin: EdgeInsets.all(8),
                        child:
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children : <Widget>[

                        Expanded(
                          flex: 3,
                          child: 
                        Text("Price : Rp. 15.000",
                        style: TextStyle(
                          fontSize: 17
                        ),
                        )
                        )
                         ,

                        Expanded(
                          flex: 1,
                          child: 

                        SizedBox(
                        width: 100,
                        height: 20,
                        
                        child: ElevatedButton(onPressed: (){}, 
                        child:
                        
                         Text("Buy",
                        style: TextStyle(
                          color: Colors.black
                        )) 
                         
                         ,
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                   ),
                          ),
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          shadowColor: MaterialStateProperty.all(Colors.transparent)
                        ),),
                      )
                        )
                         
                        ])),
                      
                  

                ],
              ),
            
          ),
        )
        ),

      SizedBox(
        height: 10,
      ),

      Center(
          child: Text("--- Our Popular Menu ---",
          style: TextStyle(
            fontSize: 20
          ),
          ),
        ),
         SizedBox(
        height: 10,
      ),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget> [
              
              Container(
                padding: EdgeInsets.all(4),
                width: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: Colors.orangeAccent,
                    child: Column(
                      children: <Widget> [

                        Expanded(
                          flex: 25,
                          child: 
                         Image.asset('images/burger.png',
                        height: 120,)
                        )
                       ,
                        Expanded(
                          flex: 7,
                          child: 
                        Text("Burger")
                        )
                        ,
                        Container(
                          
                          padding: EdgeInsets.all(8),
                       child:   Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: <Widget> [
                            
                            Expanded(
                              flex: 6,
                              child: 
                            SizedBox(

                              height: 20,
                              width: 80,
                              child: ElevatedButton(onPressed: () {
                                
                              },
                            child: Text("Detail",
                        style: TextStyle(
                          color: Colors.black
                        )),
                        
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                   ),
                          ),
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          shadowColor: MaterialStateProperty.all(Colors.transparent)
                        )
                        ),
                            )
                            )
                            ,

                            Expanded(
                              flex: 1,
                              child: 
                             SizedBox(
                              width: 10,
                            )
                            )
                           ,
                            

                            Expanded(
                              flex: 6,
                              child: 
                            SizedBox(
                              height: 20,
                              width: 80,
                           child:  ElevatedButton(onPressed: () {},
                            child: Text("Buy",
                        style: TextStyle(
                          color: Colors.black
                        )),
                        
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                   ),
                          ),
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          shadowColor: MaterialStateProperty.all(Colors.transparent)
                        )
                        )

                            )
                            )

                            
                            
                        ,


                          ],
                        )
                        )
                        
                      ],
                    ),
                  ),
                  
                ),
              )
              
              ,
              
              Container(
                padding: EdgeInsets.all(4),
                width: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: Colors.orangeAccent,
                    child: Column(
                      children: <Widget> [

                        Expanded(
                          flex: 25,
                          child: 
                         Image.asset('images/pizza.png',
                        height: 120,)
                        )
                       ,
                        Expanded(
                          flex: 7,
                          child: 
                        Text("pizza")
                        )
                        ,
                        Container(
                          
                          padding: EdgeInsets.all(8),
                       child:   Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: <Widget> [
                            
                            Expanded(
                              flex: 6,
                              child: 
                            SizedBox(

                              height: 20,
                              width: 80,
                              child: ElevatedButton(onPressed: () {
                                
                              },
                            child: Text("Detail",
                        style: TextStyle(
                          color: Colors.black
                        )),
                        
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                   ),
                          ),
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          shadowColor: MaterialStateProperty.all(Colors.transparent)
                        )
                        ),
                            )
                            )
                            ,

                            Expanded(
                              flex: 1,
                              child: 
                             SizedBox(
                              width: 10,
                            )
                            )
                           ,
                            

                            Expanded(
                              flex: 6,
                              child: 
                            SizedBox(
                              height: 20,
                              width: 80,
                           child:  ElevatedButton(onPressed: () {},
                            child: Text("Buy",
                        style: TextStyle(
                          color: Colors.black
                        )),
                        
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                   ),
                          ),
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          shadowColor: MaterialStateProperty.all(Colors.transparent)
                        )
                        )

                            )
                            )

                            
                            
                        ,


                          ],
                        )
                        )
                        
                      ],
                    ),
                  ),
                  
                ),
              )
              
              ,
             
              Container(
                padding: EdgeInsets.all(4),
                width: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: Colors.orangeAccent,
                    child: Column(
                      children: <Widget> [

                        Expanded(
                          flex: 25,
                          child: 
                         Image.asset('images/sd.png',
                        height: 120,)
                        )
                       ,
                        Expanded(
                          flex: 7,
                          child: 
                        Text("Soft drinks")
                        )
                        ,
                        Container(
                          
                          padding: EdgeInsets.all(8),
                       child:   Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: <Widget> [
                            
                            Expanded(
                              flex: 6,
                              child: 
                            SizedBox(

                              height: 20,
                              width: 80,
                              child: ElevatedButton(onPressed: () {
                                
                              },
                            child: Text("Detail",
                        style: TextStyle(
                          color: Colors.black
                        )),
                        
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                   ),
                          ),
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          shadowColor: MaterialStateProperty.all(Colors.transparent)
                        )
                        ),
                            )
                            )
                            ,

                            Expanded(
                              flex: 1,
                              child: 
                             SizedBox(
                              width: 10,
                            )
                            )
                           ,
                            

                            Expanded(
                              flex: 6,
                              child: 
                            SizedBox(
                              height: 20,
                              width: 80,
                           child:  ElevatedButton(onPressed: () {},
                            child: Text("Buy",
                        style: TextStyle(
                          color: Colors.black
                        )),
                        
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                   ),
                          ),
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          shadowColor: MaterialStateProperty.all(Colors.transparent)
                        )
                        )

                            )
                            )

                            
                            
                        ,


                          ],
                        )
                        )
                        
                      ],
                    ),
                  ),
                  
                ),
              )
              
              ,
              


            ],
          ),
        )
        
        
      ],
    ),
//end of all column

    )),
   bottomNavigationBar: BottomNavigationBar(
    fixedColor: Colors.orangeAccent,
        
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
       
      ),
     
    );
  }
}