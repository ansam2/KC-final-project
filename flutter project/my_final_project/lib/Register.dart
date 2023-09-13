import 'package:flutter/material.dart';
import 'package:my_final_project/firstpage.dart';
import 'package:my_final_project/my_button.dart';
import 'package:my_final_project/my_text_field.dart';

class Register extends StatefulWidget {
  final void Function()? onTap;
  const Register({super.key , this.onTap});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
 final emailController = TextEditingController();
final passwordController = TextEditingController();
final confirmpasswordController =TextEditingController();
final chooseyourdocController =TextEditingController();

void signup(){}
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor:Color.fromARGB(172, 247, 219, 229),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30,),
                Image.asset('assets/images/logo.png' ,  height: 80,width: 80,),
                Text("Welcome To DOC.Talk", 
                
                style: TextStyle(fontSize: 20 , 
                color: Colors.deepPurple[300] )
                ,) ,
                SizedBox(height: 10,),
                Text("let's create an account for you!" , style: TextStyle(color:  Colors.deepPurple[300],
                fontSize: 20 , fontWeight: FontWeight.bold)),
                 SizedBox(height: 10,),
               MyTextField(
                controller: emailController,
                hintText: "Email",
                 obscureText:false
                 ) ,
                  SizedBox(height: 20,),
                 MyTextField(
                controller: passwordController,
                hintText: "password",
                 obscureText:true
                 ) , 
                 SizedBox(height: 20,),
                  MyTextField(
                controller: confirmpasswordController,
                hintText: " confirm password",
                 obscureText:true
                 ) ,SizedBox(height:20),
                 
 
                 
                SizedBox(height:20),
                Mybutton(onTap:(){    Navigator.push(context, MaterialPageRoute(builder: (context)=>Firstpage()));}, text: "Sign up"),
            SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("already a member?"),
                SizedBox( height:4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text("login now",
                  style: TextStyle(fontWeight: FontWeight.bold),),
                ),
               
          ]
              ,
            ),
         ] ),
        ),
      ),

    ));
  }
}
