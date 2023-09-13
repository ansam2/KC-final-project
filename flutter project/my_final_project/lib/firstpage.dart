import 'package:flutter/material.dart';
import 'package:my_final_project/calculater.dart';
import 'package:my_final_project/dentistetc.dart';
import 'package:my_final_project/doctors.dart';
import 'package:my_final_project/healthy.dart';
class Firstpage extends StatefulWidget {
  const Firstpage({super.key });

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    //background
    return Scaffold(backgroundColor: Colors.grey[300],
    body:SafeArea(
      child: Column(children: [Padding(padding:EdgeInsets.symmetric(horizontal:25),
        
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            
              children: [
               
                Text('Welcome To,', style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(
            'DOC.Talk',
             style: TextStyle(fontSize: 30  , color: const Color.fromARGB(255, 236, 99, 147),
              fontWeight: FontWeight.bold), ), 
             
              ]
              ),
          ),
            Container(
              padding: EdgeInsets.all(12),
              
              decoration: BoxDecoration(color:Colors.deepPurple[100],
              borderRadius: BorderRadius.circular(12) ),
              child: Icon(Icons.person)),

            ]
            ,),
      ),
      //caculator
      SizedBox(height: 26,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Container(padding: EdgeInsets.all(20),
          decoration: BoxDecoration(color:Colors.pink[100],
          borderRadius: BorderRadius.circular(12),
          ),
         
          child: Row(children: [
      //pic for weight
      Container(
      height: 100 ,
      width: 100,
      child: Image.asset('assets/images/calories.png')
     )
      ,
      SizedBox(width:25),      
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Wanna get fit!', style:TextStyle(
              fontWeight: FontWeight.bold 
            , fontSize: 16) ,),
            SizedBox(height: 12,),
            Text('fill out you medical card now to calculate the calories you need per-day',
             style:TextStyle(fontWeight: FontWeight.bold,
               fontSize: 12)),
            SizedBox(height: 12,),

            Container( 
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.deepPurple[300],
                borderRadius: BorderRadius.circular(12)


              ),
             // caculator botton
              child: GestureDetector(
                
                   onTap:(){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (Context)=>calcultor()));

                   },
                   child:Text('Calculate Now', style: TextStyle(color: Colors.white),) ,
                   ),
                ),
             
          ],
        ),
      )
      
          ],)
        ),
      ),
      SizedBox(height: 25,)  ,
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(' Maintain a Healthy Lifestyle by..', style:  TextStyle(color:  Colors.deepPurple[300],
            fontWeight: FontWeight.bold ,
            fontSize: 15,),),
          GestureDetector(
            child: Text('see more',
            style: TextStyle(fontSize: 16,
            color: Colors.grey[500],
            fontWeight: FontWeight.bold,),
            ),onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Healthy()));},
          )]),
         
    SizedBox(height: 10,),
      //dentist, surgeon , ect
           Container(
        height: 80,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Dentistetc( IconImagepath: 'assets/images/workout-machine.png',categoryName: 'Workout',),
            Dentistetc(IconImagepath:'assets/images/stop-sign.png' , categoryName: 'NO Smoking!'),
            Dentistetc(IconImagepath: 'assets/images/humidity.png', categoryName: 'Stay Hydrated'),
            Dentistetc(IconImagepath: 'assets/images/passionate.png', categoryName: ' Pursue Passion'),
            Dentistetc(IconImagepath: 'assets/images/volunteer.png', categoryName: 'Volunteer'),
            Dentistetc(IconImagepath: 'assets/images/mindful.png', categoryName: 'Stay Mindful'),
            


          ],
        ),
        
      ), 
SizedBox(height: 25,),
      //doctor list
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text(' Chat With Your Doctors',
          style: TextStyle(color:  Colors.deepPurple[300],
            fontWeight: FontWeight.bold ,
            fontSize: 20,),),
          Text('DOC.Talk',
          style: TextStyle(fontSize: 16,
          color: Colors.grey[500],
          fontWeight: FontWeight.bold,),
          ),
        ],
        ),
      ),
 SizedBox(height: 25,),
 Expanded(child:ListView(
 scrollDirection: Axis.horizontal,
 children: [
  Doctors(
    Experiance: 'Dentist', 
    docimgpath: 'assets/images/doc1.png',
     docname: 'Dr.John Selvister',
      raiting: '4.9 , 20y.e'),
      Doctors(
    Experiance: 'Sergeon', 
    docimgpath: 'assets/images/doc2.png',
     docname: 'Dr.Lilian Safaan',
      raiting: '3.5 , 3y.e'),
      Doctors(
    Experiance: 'Optition', 
    docimgpath: 'assets/images/doc4.png',
     docname: 'Dr.Adam Abdallah',
      raiting: '4.6 , 7y.e'),
 ],) ),
    ],
  ),
    ))
 
 

     
    
  ;
  }
}