import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final TextEditingController controller;
final String hintText ;
final bool obscureText ;
  const MyTextField({super.key  , 
  required this.controller , required this.hintText , required this.obscureText ,});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
controller: widget.controller,
obscureText: widget.obscureText,
decoration: InputDecoration(
  enabledBorder:OutlineInputBorder
  (borderSide: BorderSide(color: const Color.fromARGB(255, 176, 133, 248),)),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide( color:const Color.fromARGB(255, 235, 143, 174),)
  ),
fillColor:  Color.fromARGB(255, 252, 252, 252),
filled: true,
hintText: widget.hintText,
hintStyle: TextStyle(color: const Color.fromARGB(255, 184, 156, 233)),



),


    ) ;
  }
}