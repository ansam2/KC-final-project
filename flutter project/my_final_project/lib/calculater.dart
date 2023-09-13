import 'package:flutter/material.dart';
import 'package:my_final_project/firstpage.dart';

class calcultor extends StatefulWidget {
   calcultor
({super.key});

  @override
  State<calcultor> createState() => _calcultorState();
}

class _calcultorState extends State<calcultor> {
  @override

Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Calorie Calculator',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: CalorieCalculatorScreen(),
    );
  }
}

class CalorieCalculatorScreen extends StatefulWidget {
  @override
  _CalorieCalculatorScreenState createState() =>
      _CalorieCalculatorScreenState();
}

class _CalorieCalculatorScreenState extends State<CalorieCalculatorScreen> {
  double weight = 70.0; // Initial weight in kilograms
  double height = 170.0; // Initial height in centimeters
  int age = 25; // Initial age in years
  double bmr = 0.0; // Basal Metabolic Rate
  double caloriesNeeded = 0.0;

  // Calculate Basal Metabolic Rate (BMR) using the Mifflin-St Jeor Equation
  void calculateBMR() {
    setState(() {
      if (age > 0 && weight > 0 && height > 0) {
        if (age < 18) {
          // For children, use the Harris-Benedict Equation
          bmr = 88.362 + (13.397 * weight) + (4.799 * height) - (5.677 * age);
        } else {
          // For adults, use the Mifflin-St Jeor Equation
          bmr = 10 * weight + 6.25 * height - 5 * age;
        }
      } else {
        bmr = 0.0;
      }
      calculateCaloriesNeeded();
    });
  }

  // Calculate daily calorie needs based on activity level (e.g., sedentary, active)
  void calculateCaloriesNeeded() {
    double activityLevelFactor = 1.2; // Default to sedentary
    // Modify activityLevelFactor based on user's selection

    caloriesNeeded = bmr * activityLevelFactor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calorie Calculator'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Firstpage())) ;// Navigate back to the previous screen
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Calculate Your Daily Calorie Needs',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Text('Weight (kg): $weight'),
            Slider(
              value: weight,
              onChanged: (newValue) {
                setState(() {
                  weight = newValue;
                });
              },
              min: 0,
              max: 200,
              divisions: 200,
              label: weight.toString(),
            ),
            Text('Height (cm): $height'),
            Slider(
              value: height,
              onChanged: (newValue) {
                setState(() {
                  height = newValue;
                });
              },
              min: 0,
              max: 250,
              divisions: 250,
              label: height.toString(),
            ),
            Text('Age: $age'),
            Slider(
              value: age.toDouble(),
              onChanged: (newValue) {
                setState(() {
                  age = newValue.toInt();
                });
              },
              min: 0,
              max: 100,
              divisions: 100,
              label: age.toString(),
            ),
            ElevatedButton(
              onPressed: calculateBMR,
              child: Text('Calculate'),
            ),SizedBox(height: 15,),
            Text('Basal Metabolic Rate (BMR): $bmr', style: TextStyle(color: Colors.deepPurple[300] , fontSize: 15, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text('Calories Needed per-day: $caloriesNeeded' , style: TextStyle(color: Colors.deepPurple[300] , fontSize: 20 , fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}







  