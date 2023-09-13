
import 'package:flutter/material.dart';
import 'package:my_final_project/firstpage.dart';

void main() {
  runApp(chatpage());
}

class chatpage extends StatefulWidget {
  chatpage({super.key});

  @override
  State<chatpage> createState() => _chatpageState();
}

class _chatpageState extends State<chatpage> {
  var textinput = TextEditingController();
  List<String> messages = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( appBar: AppBar(
        title: Text("Chat With Your Doctor"),
        backgroundColor: Colors.pink[300],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Firstpage())) ;// Navigate back to the previous screen
          },
        ),
      ),
       
        body: Column(
          children: [
            Container(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Container( padding: EdgeInsets.all(12.0),
                        margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text("Welcome to DOC.Talk ",style: TextStyle(fontSize: 18, color: Colors.white,),),
                 decoration: BoxDecoration(
                          color: Colors.pink[300],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                  ),
                  SizedBox(height: 7,),
                  Container( padding: EdgeInsets.all(12.0),
                        margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text("How Can I Assest You",style: TextStyle(fontSize: 18,  color: Colors.white,),),
                  decoration: BoxDecoration(
                          color: Colors.pink[300],
                          borderRadius: BorderRadius.circular(10.0),
                        ),),
                
                ]),
              ),





            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: EdgeInsets.all(12.0),
                      margin: EdgeInsets.symmetric(vertical: 8.0),
                      decoration: BoxDecoration(
                        color: Colors.pink[300],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        messages[index],
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                child: TextField(
                  controller: textinput,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: 'Enter your message',
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    String message = textinput.text;
                    if (message.isNotEmpty) {
                      messages.add(message);
                      textinput.clear();
                      print(message);
                    }
                  });
                },
                icon: Icon(Icons.send),
                color: Colors.pink[300],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
