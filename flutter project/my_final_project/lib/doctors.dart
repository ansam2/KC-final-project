import 'package:flutter/material.dart';
import 'package:my_final_project/chatpage.dart';

class Doctors extends StatefulWidget {
  

  @override
  State<Doctors> createState() => _DoctorsState();

  final String docimgpath;
  final String raiting;
  final String docname;
  final String Experiance;
  Doctors({super.key ,
  required this.Experiance , 
  required this.docimgpath, 
  required this.docname ,
  required this.raiting});

}

class _DoctorsState extends State<Doctors> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 25),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>chatpage()));
         },
        child: Container(
          padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
        children: [
          
          
          //pic of the doc
          ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset(widget.docimgpath,
        height: 100,),
          ),
          SizedBox(height: 10,),
          
          // doctor's rating
          Row(children: [Icon(Icons.star, 
          color: Colors.yellow[600],),
          Text(widget.raiting, style:TextStyle(fontWeight: FontWeight.bold) ,)],),
          SizedBox(height: 10,),
          
          
          //doc name
          Text(widget.docname ,style:TextStyle(fontWeight: FontWeight.bold , fontSize: 18) ,),
          SizedBox(height: 10,),
          //doc title
          Text(widget.Experiance)
          
        ])),
      ),  
    );
  }
}