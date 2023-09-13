
import 'package:flutter/material.dart';

class Dentistetc extends StatefulWidget {
  final IconImagepath;
  final String categoryName;

   Dentistetc({super.key , required this.IconImagepath , required this.categoryName ,});

  @override
  State<Dentistetc> createState() => _DentistetcState();
}

class _DentistetcState extends State<Dentistetc> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 25),
      child: GestureDetector(
        

       
        child: Container(
          
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                 color: Colors.deepPurple[100 ],
                  ),
                  
              
              child:Row(
                children: [
                  Image.asset(widget.IconImagepath
                  ,height: 30,),
                  SizedBox
                  (width: 10,),
                  Text(widget.categoryName),
                
                  
                
                ],
              ),
             
          
          
        ),
      ),
    );
    
  }
}