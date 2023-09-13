import 'package:flutter/material.dart';
import 'package:my_final_project/loginPage.dart';
import 'package:my_final_project/Register.dart';

class loginOrregister extends StatefulWidget {
  const loginOrregister({super.key});

  @override
  State<loginOrregister> createState() => _loginOrregisterState();
}

class _loginOrregisterState extends State<loginOrregister> {
  bool showloginPage= true;
  void togglepages(){
    setState(() {
      showloginPage = !showloginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if (showloginPage){
      return loginPage(onTap: togglepages,);
    }
    else{
      return Register(onTap: togglepages,);
    }
  }
}