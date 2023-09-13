import 'package:flutter/material.dart';

class Healthy extends StatelessWidget {
  const Healthy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor:Colors.pink[300],
      title: Text('Tips For Maintaing A Healthy Lifestyle ',
       style: TextStyle(
        color: Colors.white,
       fontWeight: FontWeight.bold), ),
     ),
     body:Center(
       child: Container(child: Column(children: [
              SizedBox(height: 20,),
              Text('1.Measure and Watch Your Weight', style: TextStyle(color: Colors.deepPurple[300] , fontWeight: FontWeight.bold, fontSize: 20),),
             SizedBox(height: 10,),
              Text('Keeping track of your body weight on a daily or weekly basis will help you see what you are losing and/or what you are gaining.',style: TextStyle(color: Colors.black , fontSize: 15) ),
              SizedBox(height: 10,),
              Text('2.Limit Unhealthy Foods ', style: TextStyle(color: Colors.deepPurple[300] , fontWeight: FontWeight.bold, fontSize: 20),),
             SizedBox(height: 10,),
              Text('Do not forget to eat breakfast and choose a nutritious meal with more protein and fiber and less fat, sugar, and calories.',style: TextStyle(color: Colors.black , fontSize: 15) ),
              SizedBox(height: 10,),
              Text('3.Take Multivitamin Supplementss', style: TextStyle(color: Colors.deepPurple[300] , fontWeight: FontWeight.bold, fontSize: 20),),
             SizedBox(height: 10,),
              Text('To make sure you have sufficient levels of nutrients, taking a daily multivitamin supplement is a good idea,especially when you do not have a variety of vegetables and fruits at home. Many micronutrients are vital to your immune system, including vitamins A, B6, B12, C, D, and E, as well as zinc, iron, copper, selenium, and magnesium. However, there is currently NO available evidence that adding any supplements or “miracle mineral supplements” to your diet will help protect you from the virus or increase recovery. In some cases, high doses of vitamins can be bad for your health. ',style: TextStyle(color: Colors.black , fontSize: 15) ),
              SizedBox(height: 10,),
              Text('4. Stay Hydrated', style: TextStyle(color: Colors.deepPurple[300] , fontWeight: FontWeight.bold, fontSize: 20),),
             SizedBox(height: 10,),
              Text('Drink water regularly to stay healthy, but there is NO evidence that drinking water frequently (e.g. every 15 minutes) can help prevent any viral infection',style: TextStyle(color: Colors.black , fontSize: 15) ),
              SizedBox(height: 10,),
               SizedBox(height: 20,),
              Text('5.Measure and Watch Your Weight', style: TextStyle(color: Colors.deepPurple[300] , fontWeight: FontWeight.bold, fontSize: 20),),
             SizedBox(height: 10,),
              Text('Keeping track of your body weight on a daily or weekly basis will help you see what you are losing and/or what you are gaining.',style: TextStyle(color: Colors.black , fontSize: 15) ),
              SizedBox(height: 10,),
              Text('6.Limit Unhealthy Foods ', style: TextStyle(color: Colors.deepPurple[300] , fontWeight: FontWeight.bold, fontSize: 20),),
             SizedBox(height: 10,),
    
       ],)),
     ) 
    );
  }
}