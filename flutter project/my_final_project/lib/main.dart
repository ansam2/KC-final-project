import 'package:flutter/material.dart';
import 'package:my_final_project/home.dart';



void main() {
  runApp( MainApp());
}

class MainApp extends StatefulWidget {
  
  
   MainApp({super.key  });

  @override
  State<MainApp> createState() => _MainAppState();
  
}


class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp( debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: mainpage(),//called mainpage
        ),
        ),
      );
     
  }
}

//put the design in a different class called mainpage

class mainpage extends StatefulWidget {
  const mainpage({
    super.key,
  });

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width:double.infinity,
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          colors:[
     Color.fromARGB(192, 247, 243, 245), 
    Color.fromARGB(235, 245, 124, 166),
    ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: [0.0 , 1.0] ,
        tileMode: TileMode.clamp)
      ),
      child:Center(
        child: Stack(children: [
          Positioned(
            bottom: 350,
            left: 0,
            right: 0,
            child:Center(
              child: Column(
                children: [
                  Image.asset('assets/images/logo.png', width:150,), 
                  Text("Welcome to.." ,style: TextStyle(color: Colors.white, fontSize:15 , ),),
                  Text('DOC.Talk' , style: TextStyle(
                    fontSize: 33,
                    color: Colors.white, 
                  ),)
                ],
              ),
            )), 
           Positioned(
            bottom: 100,
            left: 0,
            right: 0,
            child:Padding(padding: EdgeInsets.all(40),
              child: GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> hoomepage()));
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Center(
                    child: Text('Get Started' , style: TextStyle( color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    ),),
                  ),
                ),
              ),)
            
            ) 
            
            
            
            
            
            ],

        ),
      )

          
        
     
      );
    
  }
}