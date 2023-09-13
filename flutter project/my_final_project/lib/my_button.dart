import 'package:flutter/material.dart';
import 'package:my_final_project/firstpage.dart';

class Mybutton extends StatefulWidget {
  
final void Function()? onTap;
final String text;
Mybutton({super.key, required this.onTap, required this.text});

  @override
  State<Mybutton> createState() => _MybuttonState();
}

class _MybuttonState extends State<Mybutton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {     Navigator.push(context, MaterialPageRoute(builder: (context)=> Firstpage()));},
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.deepPurple[300],
          borderRadius: BorderRadius.circular(9)

        ),
        child: Center(
          child: Text(widget.text , style: TextStyle( color: Color.fromARGB(255, 237, 242, 247),
          fontWeight: FontWeight.bold , fontSize: 19  ),),
        ),
      ),
    );
  }
}