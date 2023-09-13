import 'package:flutter/material.dart';
import 'package:my_final_project/firstpage.dart';
import 'package:my_final_project/my_button.dart';
import 'package:my_final_project/my_text_field.dart';
class loginPage extends StatefulWidget {
 final void Function()? onTap;
   loginPage({super.key ,    this.onTap});
  @override
  State<loginPage> createState() => _loginPageState();
}
class _loginPageState extends State<loginPage> {
final emailController = TextEditingController();
final passwordController = TextEditingController();
void signin(){}
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Color.fromARGB(172, 247, 219, 229),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50,),
                 Image.asset('assets/images/logo.png', height: 80,width: 80,),
              
                Text("Welcome To DOC.Talk",
                style: TextStyle(fontSize: 20 , 
                color:Colors.deepPurple[300] )
                ,),
                SizedBox(height: 15,),
                Text(" You've Been Missed :)",  style: TextStyle(color:  Colors.deepPurple[300],
                fontSize: 20 , fontWeight: FontWeight.bold)),
                 SizedBox(height: 20,),
               MyTextField(
                controller: emailController,
                hintText: "Email",
                 obscureText:false
                 ) ,
                  SizedBox(height: 30,),
                 MyTextField(
                controller: passwordController,
                hintText: "password",
                 obscureText:true
                 ) , 
                SizedBox(height: 10,),
                Mybutton(onTap:(){   
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> Firstpage()));}, text: "Sign in"),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member?"),
                SizedBox( width:4),
               GestureDetector(
                onTap: widget.onTap ,
                 child: Text("Register now",
                    style: TextStyle(fontWeight: FontWeight.bold,),),
               ), ],)],), ),), ), ); }}